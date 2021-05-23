import 'package:flutter/material.dart';
import 'package:flutterui/Screens/Welcome/WelcomeScreen.dart';


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Authentication',
      theme: ThemeData(
        primaryColor: Colors.lightBlue[100],
        scaffoldBackgroundColor: Colors.white
      ),
      home: WelcomeScreen(),
    );
  }
}
