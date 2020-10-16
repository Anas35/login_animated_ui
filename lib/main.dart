import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/log_in_animation/log_in_animation.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white.withOpacity(0.5),
        primaryColor: Color(0xFF0278ae),
        accentColor: Colors.white,
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
          buttonColor: Colors.white,
          textTheme: ButtonTextTheme.accent,
          colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Colors.black87),
        ),
      ),
      home: Scaffold(
        body: LoginAnimation(),
      ),
    );
  }
}