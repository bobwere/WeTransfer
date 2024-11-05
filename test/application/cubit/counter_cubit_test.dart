import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'package:wetransfer/application/application.dart';
import 'package:wetransfer/application/cubit/app_state.dart';
import 'package:wetransfer/domain/we_transaction.dart';
import 'package:wetransfer/infrastructure/transaction_repository.dart';

void main() {
  group('AppCubit', () {
    late Dio dio;
    late DioAdapter dioAdapter;

    setUp(() {
      dio = Dio(
        BaseOptions(
          baseUrl: 'https://6728f2506d5fa4901b6b99f7.mockapi.io/api/v1 ',
        ),
      );
      dioAdapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
      dio.httpClientAdapter = dioAdapter;
    });

    test('initial state is AppState.initial()', () {
      expect(
        AppCubit(
          TransactionRepository(dio),
        ).state,
        equals(
          AppState.initial(),
        ),
      );
    });

    blocTest<AppCubit, AppState>(
      'emits [list of transactions] when fetchTransactions is called and api call succeeds',
      setUp: () {
        return dioAdapter.onGet(
          '/transactions',
          (server) {
            server.reply(200, [
              {
                'createdAt': 1730736942,
                'name': 'Hugo Carroll',
                'type': 'Income',
                'description':
                    'payment transaction at Fay Inc using card ending with ***(...8056) for NZD 468.98 in account ***98973260',
                'amount': '623.70',
                'id': '1',
              },
            ]);
          },
        );
      },
      build: () => AppCubit(
        TransactionRepository(dio),
      ),
      wait: const Duration(milliseconds: 500),
      act: (cubit) => cubit.fetchTransactions(),
      expect: () => [
        AppState.initial().copyWith.call(
              fetchTransactionStatus: FormzStatus.submissionInProgress,
            ),
        AppState.initial().copyWith.call(
          fetchTransactionStatus: FormzStatus.submissionSuccess,
          transactions: [
            WeTransaction.fromJson(
              {
                'createdAt': 1730736942,
                'name': 'Hugo Carroll',
                'type': 'Income',
                'description':
                    'payment transaction at Fay Inc using card ending with ***(...8056) for NZD 468.98 in account ***98973260',
                'amount': '623.70',
                'id': '1',
              },
            ),
          ],
        ),
      ],
    );

    blocTest<AppCubit, AppState>(
      'emits [error] when fetchTransactions is called and api call fails',
      setUp: () {
        return dioAdapter.onGet(
          '/transactions',
          (server) {
            server.reply(
              400,
              {'status': 400, 'error': 'Error Occurred'},
            );
          },
        );
      },
      build: () => AppCubit(
        TransactionRepository(dio),
      ),
      wait: const Duration(milliseconds: 500),
      act: (cubit) => cubit.fetchTransactions(),
      expect: () => [
        AppState.initial().copyWith.call(
              fetchTransactionStatus: FormzStatus.submissionInProgress,
            ),
        AppState.initial().copyWith.call(
              fetchTransactionStatus: FormzStatus.submissionFailure,
              fetchTransactionError:
                  'An error occurred while fetching ur transaction',
            ),
      ],
    );
  });
}
