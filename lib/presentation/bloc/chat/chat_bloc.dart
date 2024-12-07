import 'dart:async';

import 'package:chatvigor/domain/repository/chat_repository.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_event.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository chatRepository;

  ChatBloc({required this.chatRepository}) : super(ChatState.initial()) {
    on<OnChatStartedEvent>(_onChatStartedEvent);
    on<OnChatSendMessageEvent>(_onChatSendMessageEvent);
    on<OnChatResetEvent>(_onChatResetEvent);
  }

  FutureOr<void> _onChatStartedEvent(
    OnChatStartedEvent event,
    Emitter<ChatState> emit,
  ) {
    emit(state.copyWith(status: ChatStatus.loading));
    try {
      chatRepository.startChat().then((messages) {
        emit(state.copyWith(status: ChatStatus.loaded, messages: messages));
      });
    } catch (error) {
      emit(state.copyWith(status: ChatStatus.error));
    }
  }

  FutureOr<void> _onChatSendMessageEvent(
    OnChatSendMessageEvent event,
    Emitter<ChatState> emit,
  ) {}

  FutureOr<void> _onChatResetEvent(
    OnChatResetEvent event,
    Emitter<ChatState> emit,
  ) {}
}
