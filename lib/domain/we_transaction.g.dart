// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'we_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeTransactionImpl _$$WeTransactionImplFromJson(Map<String, dynamic> json) =>
    _$WeTransactionImpl(
      id: json['id'] as String?,
      type: json['type'] as String?,
      description: json['description'] as String?,
      amount: json['amount'] as String?,
      createdAt: (json['createdAt'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$WeTransactionImplToJson(_$WeTransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'description': instance.description,
      'amount': instance.amount,
      'createdAt': instance.createdAt,
      'name': instance.name,
    };
