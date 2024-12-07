import 'package:chatvigor/data/client_service/chat_service.dart';
import 'package:chatvigor/data/data_source/chat_repository_impl.dart';
import 'package:chatvigor/domain/repository/chat_repository.dart';
import 'package:chatvigor/presentation/bloc/chat/chat_bloc.dart';
import 'package:chatvigor/presentation/cubit/steps_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupDependencies() {
  // API clients
  getIt.registerLazySingleton<ChatService>(() => ChatService());

  // Repositories
  getIt.registerLazySingleton<ChatRepository>(
      () => ChatRepositoryImpl(chatService: getIt<ChatService>()));

  // Bloc
  getIt.registerFactory<StepsCubit>(() => StepsCubit());

  getIt.registerFactory<ChatBloc>(
      () => ChatBloc(chatRepository: getIt<ChatRepository>()));
}
