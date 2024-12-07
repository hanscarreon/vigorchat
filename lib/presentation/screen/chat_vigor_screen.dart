import 'package:chat_bubbles/message_bars/message_bar.dart';
import 'package:chatvigor/core/enum/message_enum.dart';
import 'package:chatvigor/core/theme/app_colors.dart';
import 'package:chatvigor/core/util/widget_extension.dart';
import 'package:chatvigor/core/widget/app_bar/app_bar.dart';
import 'package:chatvigor/domain/model/message/message_model.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_bloc.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_event.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_state.dart';
import 'package:chatvigor/presentation/cubit/steps_cubit.dart';
import 'package:chatvigor/presentation/widget/message_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatVigorScreen extends StatelessWidget {
  static const String routeName = '/chat-vigor';
  const ChatVigorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: VCAppBar.backWithTitle(context: context, title: 'Chat'),
      body: SafeArea(
        child: Column(
          children: [
            BlocConsumer<ChatBloc, ChatState>(
              listener: (context, state) {},
              builder: (context, state) {
                return Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.messages.length,
                          itemBuilder: (context, index) {
                            final MessageModel message = state.messages[index];
                            return MessageWidget(
                              message: message,
                              subMessageOnTap: (MessageEnum messageEnum) {
                                switch (messageEnum) {
                                  case MessageEnum.openAccount:
                                    final StepsCubit stepsCubit =
                                        BlocProvider.of<StepsCubit>(context);
                                    final ChatBloc chatBloc =
                                        BlocProvider.of<ChatBloc>(context);
                                    showCreateUserDialog(
                                      context,
                                      stepCubit: stepsCubit,
                                      chatBloc: chatBloc,
                                    );

                                    break;
                                  default:
                                }
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            MessageBar(
              onSend: (value) {
                BlocProvider.of<ChatBloc>(context).add(
                  OnChatSendMessageEvent(value),
                );
              },
              actions: [
                InkWell(
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 24,
                  ),
                  onTap: () {},
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: InkWell(
                    child: const Icon(
                      Icons.camera_alt,
                      color: AppColors.primaryColor,
                      size: 24,
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
