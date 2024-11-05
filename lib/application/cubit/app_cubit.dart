import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:wetransfer/application/cubit/app_state.dart';
import 'package:wetransfer/infrastructure/transaction_repository.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit(this._transactionRepository) : super(AppState.initial());

  final TransactionRepository _transactionRepository;

  Future<void> fetchTransactions() async {
    try {
      // emit loading state
      emit(
        state.copyWith.call(
          fetchTransactionStatus: FormzStatus.submissionInProgress,
        ),
      );

      // fetch transactions
      final transactions = await _transactionRepository.getTransactions();

      // emit success state
      emit(
        state.copyWith.call(
          fetchTransactionStatus: FormzStatus.submissionSuccess,
          transactions: transactions,
        ),
      );
    } catch (e) {
      // emit failure state
      emit(
        state.copyWith.call(
          fetchTransactionStatus: FormzStatus.submissionFailure,
          fetchTransactionError:
              'An error occurred while fetching ur transaction',
        ),
      );
    }
  }
}
