// ignore_for_file: unused_element

import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wetransfer/domain/we_transaction.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState._({
    //
    FormzStatus? fetchTransactionStatus,
    String? fetchTransactionError,
    List<WeTransaction>? transactions,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  factory AppState.initial() => AppState._();
}
