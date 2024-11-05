// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

/// @nodoc
mixin _$AppState {
//
  FormzStatus? get fetchTransactionStatus => throw _privateConstructorUsedError;
  String? get fetchTransactionError => throw _privateConstructorUsedError;
  List<WeTransaction>? get transactions => throw _privateConstructorUsedError;

  /// Serializes this AppState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {FormzStatus? fetchTransactionStatus,
      String? fetchTransactionError,
      List<WeTransaction>? transactions});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchTransactionStatus = freezed,
    Object? fetchTransactionError = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_value.copyWith(
      fetchTransactionStatus: freezed == fetchTransactionStatus
          ? _value.fetchTransactionStatus
          : fetchTransactionStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus?,
      fetchTransactionError: freezed == fetchTransactionError
          ? _value.fetchTransactionError
          : fetchTransactionError // ignore: cast_nullable_to_non_nullable
              as String?,
      transactions: freezed == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<WeTransaction>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzStatus? fetchTransactionStatus,
      String? fetchTransactionError,
      List<WeTransaction>? transactions});
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetchTransactionStatus = freezed,
    Object? fetchTransactionError = freezed,
    Object? transactions = freezed,
  }) {
    return _then(_$AppStateImpl(
      fetchTransactionStatus: freezed == fetchTransactionStatus
          ? _value.fetchTransactionStatus
          : fetchTransactionStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus?,
      fetchTransactionError: freezed == fetchTransactionError
          ? _value.fetchTransactionError
          : fetchTransactionError // ignore: cast_nullable_to_non_nullable
              as String?,
      transactions: freezed == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<WeTransaction>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStateImpl implements _AppState {
  _$AppStateImpl(
      {this.fetchTransactionStatus,
      this.fetchTransactionError,
      final List<WeTransaction>? transactions})
      : _transactions = transactions;

  factory _$AppStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStateImplFromJson(json);

//
  @override
  final FormzStatus? fetchTransactionStatus;
  @override
  final String? fetchTransactionError;
  final List<WeTransaction>? _transactions;
  @override
  List<WeTransaction>? get transactions {
    final value = _transactions;
    if (value == null) return null;
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppState._(fetchTransactionStatus: $fetchTransactionStatus, fetchTransactionError: $fetchTransactionError, transactions: $transactions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.fetchTransactionStatus, fetchTransactionStatus) ||
                other.fetchTransactionStatus == fetchTransactionStatus) &&
            (identical(other.fetchTransactionError, fetchTransactionError) ||
                other.fetchTransactionError == fetchTransactionError) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fetchTransactionStatus,
      fetchTransactionError,
      const DeepCollectionEquality().hash(_transactions));

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStateImplToJson(
      this,
    );
  }
}

abstract class _AppState implements AppState {
  factory _AppState(
      {final FormzStatus? fetchTransactionStatus,
      final String? fetchTransactionError,
      final List<WeTransaction>? transactions}) = _$AppStateImpl;

  factory _AppState.fromJson(Map<String, dynamic> json) =
      _$AppStateImpl.fromJson;

//
  @override
  FormzStatus? get fetchTransactionStatus;
  @override
  String? get fetchTransactionError;
  @override
  List<WeTransaction>? get transactions;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
