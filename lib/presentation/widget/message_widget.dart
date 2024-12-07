import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:chatvigor/core/enum/message_enum.dart';
import 'package:chatvigor/core/theme/app_colors.dart';
import 'package:chatvigor/core/theme/app_style.dart';
import 'package:chatvigor/domain/model/message/message_model.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
  final MessageModel message;
  final VoidCallback? onTap;
  final Function(MessageEnum value)? subMessageOnTap;
  const MessageWidget({
    super.key,
    required this.message,
    this.onTap,
    this.subMessageOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: message.isWithCallback ? onTap : null,
      child: Column(
        children: [
          BubbleSpecialThree(
            text: message.message,
            color: message.isSender
                ? AppColors.senderColor
                : AppColors.recipientColor,
            tail: true,
            isSender: message.isSender,
          ),
          if (message.subMessages != null) ...[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 13),
                padding: const EdgeInsets.all(8),
                constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width * 0.6,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.recipientColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var item in message.subMessages!) ...[
                      GestureDetector(
                        onTap: () {
                          if (subMessageOnTap != null) {
                            subMessageOnTap!(item.messageEnum);
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 4),
                          padding: const EdgeInsets.all(8),
                          constraints: BoxConstraints(
                            minWidth: MediaQuery.of(context).size.width * 0.5,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: AppStyle.borderRadius,
                          ),
                          child: Text(
                            item.message,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      )
                    ],
                  ],
                ),
              ),
            )
          ]
        ],
      ),
    );
  }
}
