import 'package:chatvigor/core/enum/message_enum.dart';
import 'package:chatvigor/domain/model/message/message_model.dart';

class ChatService {
  List<MessageModel> get actionMessage {
    return [
      MessageModel(
        id: '1',
        message: 'Hello, how can I help you?',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        isSender: false,
        isWithCallback: false,
        messageEnum: MessageEnum.text,
        subMessages: [
          MessageModel(
            id: '1',
            message: 'Open Account',
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
            isSender: false,
            isWithCallback: true,
            messageEnum: MessageEnum.openAccount,
          ),
          MessageModel(
            id: '2',
            message: 'Apply Loans',
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
            isSender: false,
            isWithCallback: true,
            messageEnum: MessageEnum.applyLoans,
          ),
          MessageModel(
            id: '3',
            message: 'Get Balance',
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
            isSender: false,
            isWithCallback: true,
            messageEnum: MessageEnum.getBalance,
          ),
          MessageModel(
            id: '4',
            message: 'Rewards',
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
            isSender: false,
            isWithCallback: true,
            messageEnum: MessageEnum.rewards,
          ),
        ],
      ),
      MessageModel(
        id: '5',
        message: 'hello world',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        isSender: true,
        isWithCallback: true,
        messageEnum: MessageEnum.text,
      ),
      MessageModel(
        id: '6',
        message: 'Hi',
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        isSender: false,
        isWithCallback: true,
        messageEnum: MessageEnum.text,
      ),
    ];
  }
}
