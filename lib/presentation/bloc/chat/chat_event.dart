import 'package:equatable/equatable.dart';

abstract class ChatEvent extends Equatable {
  const ChatEvent();

  @override
  List<Object> get props => [];
}

class OnChatStartedEvent extends ChatEvent {
  const OnChatStartedEvent();
}

class OnChatSendMessageEvent extends ChatEvent {
  final String message;
  const OnChatSendMessageEvent(this.message);

  @override
  List<Object> get props => [message];
}

class OnChatResetEvent extends ChatEvent {
  const OnChatResetEvent();
}
