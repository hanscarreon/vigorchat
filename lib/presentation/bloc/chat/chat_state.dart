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
  final String? firstName;
  final String? lastName;
  final String? middleName;

  const ChatState({
    required this.status,
    required this.messages,
    this.token,
    this.firstName,
    this.lastName,
    this.middleName,
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
    String? firstName,
    String? lastName,
    String? middleName,
  }) =>
      ChatState(
        status: status ?? this.status,
        messages: [...this.messages, ...messages ?? []],
        token: token ?? this.token,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        middleName: middleName ?? this.middleName,
      );

  @override
  List<Object?> get props => [
        status,
        messages,
        token,
        firstName,
        lastName,
        middleName,
      ];
}
