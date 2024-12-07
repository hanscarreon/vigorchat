import 'package:chatvigor/core/router/export_router.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_bloc.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_event.dart';
import 'package:chatvigor/presentation/cubit/steps_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

Route<dynamic>? genererateRoute(RouteSettings settings) {
  return MaterialPageRoute(
    settings: settings,
    builder: (context) {
      switch (settings.name) {
        case ChatVigorScreen.routeName:
          return MultiBlocProvider(providers: [
            BlocProvider<StepsCubit>(
              create: (context) => GetIt.I<StepsCubit>(),
            ),
            BlocProvider<ChatBloc>(
              create: (context) =>
                  GetIt.I<ChatBloc>()..add(const OnChatStartedEvent()),
            ),
          ], child: const ChatVigorScreen());
        case LandingScreen.routeName:
          return const LandingScreen();
      }

      return const Scaffold(
        body: Text('no screen'),
      );
    },
  );
}
