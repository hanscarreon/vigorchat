// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
  String get id => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get senderId => throw _privateConstructorUsedError;
  String? get receiverId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  bool get isSender => throw _privateConstructorUsedError;
  bool get isWithCallback => throw _privateConstructorUsedError;
  MessageEnum get messageEnum => throw _privateConstructorUsedError;
  List<MessageModel>? get subMessages => throw _privateConstructorUsedError;

  /// Serializes this MessageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call(
      {String id,
      String message,
      String? senderId,
      String? receiverId,
      DateTime createdAt,
      DateTime updatedAt,
      bool isSender,
      bool isWithCallback,
      MessageEnum messageEnum,
      List<MessageModel>? subMessages});
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isSender = null,
    Object? isWithCallback = null,
    Object? messageEnum = null,
    Object? subMessages = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSender: null == isSender
          ? _value.isSender
          : isSender // ignore: cast_nullable_to_non_nullable
              as bool,
      isWithCallback: null == isWithCallback
          ? _value.isWithCallback
          : isWithCallback // ignore: cast_nullable_to_non_nullable
              as bool,
      messageEnum: null == messageEnum
          ? _value.messageEnum
          : messageEnum // ignore: cast_nullable_to_non_nullable
              as MessageEnum,
      subMessages: freezed == subMessages
          ? _value.subMessages
          : subMessages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageModelImplCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$MessageModelImplCopyWith(
          _$MessageModelImpl value, $Res Function(_$MessageModelImpl) then) =
      __$$MessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String message,
      String? senderId,
      String? receiverId,
      DateTime createdAt,
      DateTime updatedAt,
      bool isSender,
      bool isWithCallback,
      MessageEnum messageEnum,
      List<MessageModel>? subMessages});
}

/// @nodoc
class __$$MessageModelImplCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$MessageModelImpl>
    implements _$$MessageModelImplCopyWith<$Res> {
  __$$MessageModelImplCopyWithImpl(
      _$MessageModelImpl _value, $Res Function(_$MessageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? message = null,
    Object? senderId = freezed,
    Object? receiverId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isSender = null,
    Object? isWithCallback = null,
    Object? messageEnum = null,
    Object? subMessages = freezed,
  }) {
    return _then(_$MessageModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isSender: null == isSender
          ? _value.isSender
          : isSender // ignore: cast_nullable_to_non_nullable
              as bool,
      isWithCallback: null == isWithCallback
          ? _value.isWithCallback
          : isWithCallback // ignore: cast_nullable_to_non_nullable
              as bool,
      messageEnum: null == messageEnum
          ? _value.messageEnum
          : messageEnum // ignore: cast_nullable_to_non_nullable
              as MessageEnum,
      subMessages: freezed == subMessages
          ? _value._subMessages
          : subMessages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageModelImpl implements _MessageModel {
  const _$MessageModelImpl(
      {required this.id,
      required this.message,
      this.senderId,
      this.receiverId,
      required this.createdAt,
      required this.updatedAt,
      required this.isSender,
      required this.isWithCallback,
      required this.messageEnum,
      final List<MessageModel>? subMessages})
      : _subMessages = subMessages;

  factory _$MessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageModelImplFromJson(json);

  @override
  final String id;
  @override
  final String message;
  @override
  final String? senderId;
  @override
  final String? receiverId;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final bool isSender;
  @override
  final bool isWithCallback;
  @override
  final MessageEnum messageEnum;
  final List<MessageModel>? _subMessages;
  @override
  List<MessageModel>? get subMessages {
    final value = _subMessages;
    if (value == null) return null;
    if (_subMessages is EqualUnmodifiableListView) return _subMessages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MessageModel(id: $id, message: $message, senderId: $senderId, receiverId: $receiverId, createdAt: $createdAt, updatedAt: $updatedAt, isSender: $isSender, isWithCallback: $isWithCallback, messageEnum: $messageEnum, subMessages: $subMessages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isSender, isSender) ||
                other.isSender == isSender) &&
            (identical(other.isWithCallback, isWithCallback) ||
                other.isWithCallback == isWithCallback) &&
            (identical(other.messageEnum, messageEnum) ||
                other.messageEnum == messageEnum) &&
            const DeepCollectionEquality()
                .equals(other._subMessages, _subMessages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      message,
      senderId,
      receiverId,
      createdAt,
      updatedAt,
      isSender,
      isWithCallback,
      messageEnum,
      const DeepCollectionEquality().hash(_subMessages));

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      __$$MessageModelImplCopyWithImpl<_$MessageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageModelImplToJson(
      this,
    );
  }
}

abstract class _MessageModel implements MessageModel {
  const factory _MessageModel(
      {required final String id,
      required final String message,
      final String? senderId,
      final String? receiverId,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final bool isSender,
      required final bool isWithCallback,
      required final MessageEnum messageEnum,
      final List<MessageModel>? subMessages}) = _$MessageModelImpl;

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$MessageModelImpl.fromJson;

  @override
  String get id;
  @override
  String get message;
  @override
  String? get senderId;
  @override
  String? get receiverId;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  bool get isSender;
  @override
  bool get isWithCallback;
  @override
  MessageEnum get messageEnum;
  @override
  List<MessageModel>? get subMessages;

  /// Create a copy of MessageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageModelImplCopyWith<_$MessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
