import 'package:flutter/material.dart';
import 'package:tut_app/presentation/resources/routes_manager.dart';
import 'package:tut_app/presentation/resources/theme_manager.dart';


// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  // private named constructor
  const MyApp._internal();
  
  // single instance -- singleton
  static const MyApp instance = MyApp._internal();

  // factory for the class instance;
  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}
