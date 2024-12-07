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
  final String? permanentAddress;
  final String? currentAddress;
  final String? email;
  final String? mobileNumber;
  final String? sourceOfIncome;
  final String? jobTitle;

  const ChatState({
    required this.status,
    required this.messages,
    this.token,
    this.firstName,
    this.lastName,
    this.middleName,
    this.currentAddress,
    this.permanentAddress,
    this.email,
    this.mobileNumber,
    this.sourceOfIncome,
    this.jobTitle,
  });

  static ChatState initial() => const ChatState(
        status: ChatStatus.initial,
        messages: [],
        token: null,
        firstName: null,
        lastName: null,
        middleName: null,
        currentAddress: null,
        permanentAddress: null,
        email: null,
        mobileNumber: null,
        sourceOfIncome: null,
        jobTitle: null,
      );

  ChatState copyWith({
    ChatStatus? status,
    List<MessageModel>? messages,
    String? token,
    String? firstName,
    String? lastName,
    String? middleName,
    String? currentAddress,
    String? permanentAddress,
    String? email,
    String? mobileNumber,
    String? sourceOfIncome,
    String? jobTitle,
  }) =>
      ChatState(
        status: status ?? this.status,
        messages: [...this.messages, ...messages ?? []],
        token: token ?? this.token,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        middleName: middleName ?? this.middleName,
        currentAddress: currentAddress ?? this.currentAddress,
        permanentAddress: permanentAddress ?? this.permanentAddress,
        email: email ?? this.email,
        mobileNumber: mobileNumber ?? this.mobileNumber,
        sourceOfIncome: sourceOfIncome ?? this.sourceOfIncome,
        jobTitle: jobTitle ?? this.jobTitle,
      );

  @override
  List<Object?> get props => [
        status,
        messages,
        token,
        firstName,
        lastName,
        middleName,
        permanentAddress,
        currentAddress,
        email,
        mobileNumber,
        sourceOfIncome,
        jobTitle,
      ];
}
