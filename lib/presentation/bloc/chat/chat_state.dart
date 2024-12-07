import 'package:chatvigor/domain/model/message/message_model.dart';
import 'package:equatable/equatable.dart';

enum ChatStatus {
  initial,
  loading,
  loaded,
  error,
}

class ChatState extends Equatable {
  final ChatStatus status;
  final List<MessageModel> messages;

  const ChatState({required this.status, required this.messages});

  static ChatState initial() => const ChatState(
        status: ChatStatus.initial,
        messages: [],
      );

  ChatState copyWith({
    ChatStatus? status,
    List<MessageModel>? messages,
  }) =>
      ChatState(
        status: status ?? this.status,
        messages: [...this.messages, ...messages ?? []],
      );

  @override
  List<Object?> get props => [status, messages];
}
