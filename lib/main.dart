import 'package:flutter/material.dart';
import 'package:login_animated_ui/login_animation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color(0xFFCCCBCD),
          body: LoginAnimation(),
        ),
      ),
    );
  }
}