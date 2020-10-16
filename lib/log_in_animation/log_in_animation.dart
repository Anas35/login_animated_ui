import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/log_in_animation/card.dart';
import 'package:flutter_ui_challenge/log_in_animation/animation.dart';

class LoginAnimation extends StatefulWidget {
  @override
  State<LoginAnimation> createState() => LoginAnimationState();
}

class LoginAnimationState extends State<LoginAnimation> with TickerProviderStateMixin {

  AnimationController control;
  bool widgetPosition = true;

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() {
    control = AnimationController(
      duration: Duration(milliseconds: 1200),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          widgetPosition ? SignInAnimation(control: control, m1: SignInCard(
            function: (){
              control.forward().whenComplete(() => setState(() {
                widgetPosition = !widgetPosition;
              }));
            },) ,) :
          SignUpAnimation(control: control, m2: SignUpCard(
            function: (){
              control.reverse().whenComplete(() => setState(() {
                widgetPosition = !widgetPosition;
              }));
            },) ,),
          widgetPosition ? SignUpAnimation(control: control, m2: SignUpCard(function: (){},),) :
          SignInAnimation(control: control, m1: SignInCard(function: (){},),)
                ],
      ),
    );
  }

  @override
  void dispose() {
    control.dispose();
    super.dispose();
  }
}