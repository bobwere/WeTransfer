import 'package:dio/dio.dart';
import 'package:wetransfer/domain/we_transaction.dart';

class TransactionRepository {
  TransactionRepository(
    this._dio,
  );

  final Dio _dio;

  Future<List<WeTransaction>> getTransactions() async {
    try {
      final res = await _dio.get<dynamic>(
        '/transactions',
      );

      final data = res.data as List<dynamic>;
      final transactions = data
          .map((e) => WeTransaction.fromJson(e as Map<String, dynamic>))
          .toList();

      return transactions;
    } catch (e) {
      rethrow;
    }
  }
}
