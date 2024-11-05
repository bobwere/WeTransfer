// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'we_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeTransaction _$WeTransactionFromJson(Map<String, dynamic> json) {
  return _WeTransaction.fromJson(json);
}

/// @nodoc
mixin _$WeTransaction {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  int? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this WeTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeTransactionCopyWith<WeTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeTransactionCopyWith<$Res> {
  factory $WeTransactionCopyWith(
          WeTransaction value, $Res Function(WeTransaction) then) =
      _$WeTransactionCopyWithImpl<$Res, WeTransaction>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'createdAt') int? createdAt,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$WeTransactionCopyWithImpl<$Res, $Val extends WeTransaction>
    implements $WeTransactionCopyWith<$Res> {
  _$WeTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeTransactionImplCopyWith<$Res>
    implements $WeTransactionCopyWith<$Res> {
  factory _$$WeTransactionImplCopyWith(
          _$WeTransactionImpl value, $Res Function(_$WeTransactionImpl) then) =
      __$$WeTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'amount') String? amount,
      @JsonKey(name: 'createdAt') int? createdAt,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$WeTransactionImplCopyWithImpl<$Res>
    extends _$WeTransactionCopyWithImpl<$Res, _$WeTransactionImpl>
    implements _$$WeTransactionImplCopyWith<$Res> {
  __$$WeTransactionImplCopyWithImpl(
      _$WeTransactionImpl _value, $Res Function(_$WeTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? description = freezed,
    Object? amount = freezed,
    Object? createdAt = freezed,
    Object? name = freezed,
  }) {
    return _then(_$WeTransactionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeTransactionImpl implements _WeTransaction {
  _$WeTransactionImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'name') this.name});

  factory _$WeTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeTransactionImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'amount')
  final String? amount;
  @override
  @JsonKey(name: 'createdAt')
  final int? createdAt;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'WeTransaction._(id: $id, type: $type, description: $description, amount: $amount, createdAt: $createdAt, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, description, amount, createdAt, name);

  /// Create a copy of WeTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeTransactionImplCopyWith<_$WeTransactionImpl> get copyWith =>
      __$$WeTransactionImplCopyWithImpl<_$WeTransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeTransactionImplToJson(
      this,
    );
  }
}

abstract class _WeTransaction implements WeTransaction {
  factory _WeTransaction(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'amount') final String? amount,
      @JsonKey(name: 'createdAt') final int? createdAt,
      @JsonKey(name: 'name') final String? name}) = _$WeTransactionImpl;

  factory _WeTransaction.fromJson(Map<String, dynamic> json) =
      _$WeTransactionImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'amount')
  String? get amount;
  @override
  @JsonKey(name: 'createdAt')
  int? get createdAt;
  @override
  @JsonKey(name: 'name')
  String? get name;

  /// Create a copy of WeTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeTransactionImplCopyWith<_$WeTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
