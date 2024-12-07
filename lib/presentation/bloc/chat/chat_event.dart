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

class OnTapOpenAccountEvent extends ChatEvent {
  const OnTapOpenAccountEvent();

  @override
  List<Object> get props => [];
}

class OnSaveNameEvent extends ChatEvent {
  final String firstName;
  final String lastName;
  final String middleName;
  const OnSaveNameEvent({
    required this.firstName,
    required this.lastName,
    required this.middleName,
  });

  @override
  List<Object> get props => [];
}

class OnSaveAddressEvent extends ChatEvent {
  final String currentAddress;
  final String permanentAddress;
  const OnSaveAddressEvent({
    required this.currentAddress,
    required this.permanentAddress,
  });

  @override
  List<Object> get props => [];
}

class OnSavedEmplomentEvent extends ChatEvent {
  final String jobtitle;
  final String sourceOfIncome;
  const OnSavedEmplomentEvent({
    required this.sourceOfIncome,
    required this.jobtitle,
  });

  @override
  List<Object> get props => [];
}

class OnSavedContactEvent extends ChatEvent {
  final String mobileNumber;
  final String email;
  const OnSavedContactEvent({
    required this.mobileNumber,
    required this.email,
  });

  @override
  List<Object> get props => [];
}