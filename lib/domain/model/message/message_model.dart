import 'package:chatvigor/core/enum/message_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    required String id,
    required String message,
    String? senderId,
    String? receiverId,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool isSender,
    required bool isWithCallback,
    required MessageEnum messageEnum,
    List<MessageModel>? subMessages,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
