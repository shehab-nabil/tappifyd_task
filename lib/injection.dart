import 'package:get_it/get_it.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:tappifyd_task/features/chat%20/data/repositories/chat_repository_impl.dart';
import 'package:tappifyd_task/features/chat%20/domain/repositories/chat_repository.dart';
import 'package:tappifyd_task/features/chat%20/domain/usecases/chat_usecase.dart';
import 'package:tappifyd_task/features/chat%20/presentation/cubit/chat_cubit.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  final client = StreamChatClient(
    '9yw5nnkm6fkv',
    logLevel: Level.INFO,
  );
  //Bloc
  getIt.registerFactory(() => ChatCubit(
        chatUsecase: getIt(),
        client: client,
      ));
  //Use Cases
  getIt.registerLazySingleton<ChatUsecase>(() => ChatUsecase(
        chatRepository: getIt(),
      ));
//Repository
  getIt.registerLazySingleton<ChatRepository>(() => ChatRepositoryImpl());
}
