import 'package:flutter/material.dart';
import 'package:login_animated_ui/sign_in/sign_in.dart';
import 'package:login_animated_ui/sign_up/sign_up.dart';

class LoginAnimation extends StatefulWidget {

  const LoginAnimation({Key? key}) : super(key: key);

  @override
  State<LoginAnimation> createState() => LoginAnimationState();
}

class LoginAnimationState extends State<LoginAnimation> with TickerProviderStateMixin {

  final Duration halfDuration = const Duration(milliseconds: 800);

  late AnimationController control = AnimationController(
    duration: const Duration(milliseconds: 1600),
    vsync: this,
  );
  
  bool isUpper = true;

  void onSignUp() {
    control.reverse();
    Future.delayed(halfDuration, () {
      setState(() {
        isUpper = !isUpper;
      });
    });
  }

  void onSignIn() {
    control.forward();
    Future.delayed(halfDuration, () {
      setState(() {
        isUpper = !isUpper;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(
          children: isUpper ? [
              SignIn(controller: control, onPressed: onSignIn),
              SignUp(controller: control, onPressed: () {})
            ] : [
              SignUp(controller: control, onPressed: onSignUp),
              SignIn(controller: control, onPressed: () {})  
            ]
      ),
    );
  }

  @override
  void dispose() {
    control.dispose();
    super.dispose();
  }
}