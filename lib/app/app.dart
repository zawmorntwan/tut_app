import 'package:flutter/material.dart';

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
    return Scaffold();
  }
}
