import 'package:chatvigor/data/client_service/chat_service.dart';
import 'package:chatvigor/domain/model/message/message_model.dart';
import 'package:chatvigor/domain/repository/chat_repository.dart';

class ChatRepositoryImpl extends ChatRepository {
  final ChatService chatService;

  ChatRepositoryImpl({required this.chatService});

  @override
  Future<void> resetChat() {
    // TODO: implement resetChat
    throw UnimplementedError();
  }

  @override
  Future<void> sendMessage(String message) {
    // TODO: implement sendMessage
    throw UnimplementedError();
  }

  @override
  Future<List<MessageModel>> startChat() =>
      Future.value(chatService.actionMessage);
}
