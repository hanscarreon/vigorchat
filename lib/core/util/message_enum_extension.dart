

import 'package:chatvigor/core/enum/message_enum.dart';

extension MessageEnumExtension on MessageEnum{


  String get name {
    switch (this) {
      case MessageEnum.text:
        return 'text';
      case MessageEnum.openAccount:
        return 'openAccount';
      case MessageEnum.applyLoans:
        return 'applyLoans';
      case MessageEnum.getBalance:
        return 'getBalance';
      case MessageEnum.rewards:
        return 'rewards';
    }
  }

}