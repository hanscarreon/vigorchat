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
  final String? token;

  const ChatState({
    required this.status,
    required this.messages,
    this.token,
  });

  static ChatState initial() => const ChatState(
        status: ChatStatus.initial,
        messages: [],
        token: null,
      );

  ChatState copyWith({
    ChatStatus? status,
    List<MessageModel>? messages,
    String? token,
  }) =>
      ChatState(
        status: status ?? this.status,
        messages: [...this.messages, ...messages ?? []],
        token: token ?? this.token,
      );

  @override
  List<Object?> get props => [
        status,
        messages,
        token,
      ];
}
