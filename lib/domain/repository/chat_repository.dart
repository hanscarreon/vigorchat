import 'package:chatvigor/domain/model/message/message_model.dart';

abstract class ChatRepository {
  Future<List<MessageModel>> startChat();
  Future<void> sendMessage(String message);
  Future<void> resetChat();
}
