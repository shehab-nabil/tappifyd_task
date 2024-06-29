import 'package:flutter/material.dart';
import 'package:tappifyd_task/app.dart';
import 'package:tappifyd_task/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();

  runApp(
    const MyApp(),
  );
}
