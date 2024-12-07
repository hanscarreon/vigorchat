// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_token.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GenerateToken _$GenerateTokenFromJson(Map<String, dynamic> json) {
  return _GenerateToken.fromJson(json);
}

/// @nodoc
mixin _$GenerateToken {
  String get token => throw _privateConstructorUsedError;

  /// Serializes this GenerateToken to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenerateToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenerateTokenCopyWith<GenerateToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateTokenCopyWith<$Res> {
  factory $GenerateTokenCopyWith(
          GenerateToken value, $Res Function(GenerateToken) then) =
      _$GenerateTokenCopyWithImpl<$Res, GenerateToken>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class _$GenerateTokenCopyWithImpl<$Res, $Val extends GenerateToken>
    implements $GenerateTokenCopyWith<$Res> {
  _$GenerateTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenerateToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenerateTokenImplCopyWith<$Res>
    implements $GenerateTokenCopyWith<$Res> {
  factory _$$GenerateTokenImplCopyWith(
          _$GenerateTokenImpl value, $Res Function(_$GenerateTokenImpl) then) =
      __$$GenerateTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$GenerateTokenImplCopyWithImpl<$Res>
    extends _$GenerateTokenCopyWithImpl<$Res, _$GenerateTokenImpl>
    implements _$$GenerateTokenImplCopyWith<$Res> {
  __$$GenerateTokenImplCopyWithImpl(
      _$GenerateTokenImpl _value, $Res Function(_$GenerateTokenImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenerateToken
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$GenerateTokenImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenerateTokenImpl implements _GenerateToken {
  const _$GenerateTokenImpl({required this.token});

  factory _$GenerateTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenerateTokenImplFromJson(json);

  @override
  final String token;

  @override
  String toString() {
    return 'GenerateToken(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateTokenImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  /// Create a copy of GenerateToken
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateTokenImplCopyWith<_$GenerateTokenImpl> get copyWith =>
      __$$GenerateTokenImplCopyWithImpl<_$GenerateTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenerateTokenImplToJson(
      this,
    );
  }
}

abstract class _GenerateToken implements GenerateToken {
  const factory _GenerateToken({required final String token}) =
      _$GenerateTokenImpl;

  factory _GenerateToken.fromJson(Map<String, dynamic> json) =
      _$GenerateTokenImpl.fromJson;

  @override
  String get token;

  /// Create a copy of GenerateToken
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenerateTokenImplCopyWith<_$GenerateTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
