import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tappifyd_task/features/chat%20/presentation/cubit/chat_cubit.dart';
import 'package:tappifyd_task/features/chat%20/presentation/pages/user_selection_page.dart';
import 'package:tappifyd_task/injection.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ChatCubit>(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: UserSelectionPage(),
      ),
    );
  }
}
