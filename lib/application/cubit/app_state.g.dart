// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      fetchTransactionStatus: $enumDecodeNullable(
        _$FormzStatusEnumMap,
        json['fetchTransactionStatus'],
      ),
      fetchTransactionError: json['fetchTransactionError'] as String?,
      transactions: (json['transactions'] as List<dynamic>?)
          ?.map((e) => WeTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'fetchTransactionStatus':
          _$FormzStatusEnumMap[instance.fetchTransactionStatus],
      'fetchTransactionError': instance.fetchTransactionError,
      'transactions': instance.transactions,
    };

const _$FormzStatusEnumMap = {
  FormzStatus.pure: 'pure',
  FormzStatus.valid: 'valid',
  FormzStatus.invalid: 'invalid',
  FormzStatus.submissionInProgress: 'submissionInProgress',
  FormzStatus.submissionSuccess: 'submissionSuccess',
  FormzStatus.submissionFailure: 'submissionFailure',
  FormzStatus.submissionCanceled: 'submissionCanceled',
};
