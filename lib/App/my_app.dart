import 'package:flutter/material.dart';
import 'package:tut_app/Presentation/resources/routes_manager.dart';
import 'package:tut_app/Presentation/resources/theme_manager.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); 
  int appState = 0;
  static final MyApp instance = MyApp._internal();

  factory MyApp() => instance;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: RoutesManager.splashPath,
      theme: getAppTheme(),
    );
  }
}
