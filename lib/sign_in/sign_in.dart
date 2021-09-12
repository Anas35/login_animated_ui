import 'package:flutter/material.dart';
import 'package:login_animated_ui/sign_in/sign_in_card.dart';
import 'package:login_animated_ui/widgets/base_animation.dart';
import 'package:login_animated_ui/widgets/base_container.dart';

import 'dart:math' as math;

class SignIn extends StatelessWidget {

  final void Function()? onPressed;
  final AnimationController controller;

  SignIn({Key? key, this.onPressed, required this.controller}) : super(key: key);

  Animation<T> sequenceAnimation<T>(T begin, T middle, T end) {
    return TweenSequence([
      TweenSequenceItem(tween: Tween(begin: begin, end: middle), weight: 50),
      TweenSequenceItem(tween: Tween(begin: middle, end: middle), weight: 20),
      TweenSequenceItem(tween: Tween(begin: middle, end: end), weight: 30),
    ]).animate(controller);
  }

  late final Animation<double> scale2 = sequenceAnimation<double>(0.6, 0.45, 1.0);

  late final Animation<double> rotate2 = sequenceAnimation<double>(-(math.pi/2), -0.75, 0.0);

  late final Animation<Alignment> alignment2 = sequenceAnimation<Alignment>(
    const Alignment(0.2, 0.0),
    const Alignment(-0.5, -0.5),
    const Alignment(0.0, 0.0),
  );

  @override
  Widget build(BuildContext context) {
    return BaseAnimation(
      controller: controller,
      align: alignment2,
      rotate: rotate2,
      scale: scale2,
      child: BaseContainer(
        child: SignInCard(
          function: onPressed,
        ),
      ),
    );
  }
}