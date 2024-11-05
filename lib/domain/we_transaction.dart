// ignore_for_file: unused_element

import 'package:freezed_annotation/freezed_annotation.dart';

part 'we_transaction.freezed.dart';
part 'we_transaction.g.dart';

@freezed
class WeTransaction with _$WeTransaction {
  factory WeTransaction._({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'amount') String? amount,
    @JsonKey(name: 'createdAt') int? createdAt,
    @JsonKey(name: 'name') String? name,
  }) = _WeTransaction;

  factory WeTransaction.fromJson(Map<String, dynamic> json) =>
      _$WeTransactionFromJson(json);

  factory WeTransaction.initial() => WeTransaction._();
}
