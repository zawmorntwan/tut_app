import 'package:flutter/material.dart';
import 'package:tut_app/presentation/theme_manager.dart';

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  // private named constructor
  MyApp._internal();
  int appState = 0;
  // single instance -- singleton
  static final MyApp instance = MyApp._internal();

  // factory for the class instance;
  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
    );
  }
}
