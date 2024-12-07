import 'dart:async';
import 'dart:math';

import 'package:chatvigor/core/enum/message_enum.dart';
import 'package:chatvigor/domain/model/message/message_model.dart';
import 'package:chatvigor/domain/repository/chat_repository.dart';
import 'package:chatvigor/domain/repository/open_repository.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_event.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_state.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository chatRepository;
  final OpenRepository openRepository;

  ChatBloc({
    required this.chatRepository,
    required this.openRepository,
  }) : super(ChatState.initial()) {
    on<OnChatStartedEvent>(_onChatStartedEvent);
    on<OnChatSendMessageEvent>(_onChatSendMessageEvent);
    on<OnChatResetEvent>(_onChatResetEvent);
    on<OnTapOpenAccountEvent>(_onTapOpenAccountEvent);
    on<OnSaveNameEvent>(_onSavedName);
    on<OnSaveAddressEvent>(_onSaveAddress);
    on<OnSavedContactEvent>(_onSaveContact);
    on<OnSavedEmplomentEvent>(_onSavedEmployment);
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
  ) {
    emit(state.copyWith(status: ChatStatus.loaded, messages: [
      ...[
        MessageModel(
          message: event.message,
          id: Random().nextInt(1000).toString(),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          isSender: true,
          isWithCallback: true,
          messageEnum: MessageEnum.text,
        )
      ]
    ]));
  }

  FutureOr<void> _onChatResetEvent(
    OnChatResetEvent event,
    Emitter<ChatState> emit,
  ) {}

  FutureOr<void> _onTapOpenAccountEvent(
    OnTapOpenAccountEvent event,
    Emitter<ChatState> emit,
  ) async {
    openRepository.openAccount();
  }

  FutureOr<void> _onSavedName(
    OnSaveNameEvent event,
    Emitter<ChatState> emit,
  ) {
    openRepository.saveNames(
      firstName: event.firstName,
      lastName: event.lastName,
      middleName: event.middleName,
    );
  }

  FutureOr<void> _onSaveAddress(
    OnSaveAddressEvent event,
    Emitter<ChatState> emit,
  ) {
    openRepository.saveAddress(
      currentAddress: event.currentAddress,
      permanentAddress: event.permanentAddress,
    );
  }

  FutureOr<void> _onSaveContact(
    OnSavedContactEvent event,
    Emitter<ChatState> emit,
  ) {
    openRepository.saveContact(
      email: event.email,
      mobileNumber: event.mobileNumber,
    );
  }

  FutureOr<void> _onSavedEmployment(
    OnSavedEmplomentEvent event,
    Emitter<ChatState> emit,
  ) {
    openRepository.saveEmployment(
      sourceOfIncome: event.sourceOfIncome,
      jobTitle: event.jobtitle,
    );
  }
}
