import 'package:flutter/material.dart';
import 'package:login_animated_ui/sign_up/sign_up_card.dart';
import 'package:login_animated_ui/widgets/base_animation.dart';
import 'package:login_animated_ui/widgets/base_container.dart';

import 'dart:math' as math;

class SignUp extends StatelessWidget {

  final void Function()? onPressed;
  final AnimationController controller;

  SignUp({Key? key, this.onPressed, required this.controller}) : super(key: key);

  Animation<T> sequenceAnimation<T>(T begin, T middle, T end) {
    return TweenSequence([
      TweenSequenceItem(tween: Tween(begin: begin, end: middle), weight: 50),
      TweenSequenceItem(tween: Tween(begin: middle, end: middle), weight: 20),
      TweenSequenceItem(tween: Tween(begin: middle, end: end), weight: 30),
    ]).animate(controller);
  }

  late final Animation<double> scale1 = sequenceAnimation<double>(1.0, 0.45, 0.6);

  late final Animation<double> rotate1 = sequenceAnimation<double>(0.0, 0.75, -(math.pi/2));

  late final Animation<Alignment> alignment1 = sequenceAnimation<Alignment>(
    const Alignment(0.0, 0.0),
    const Alignment(-0.1, 0.75),
    const Alignment(0.2, 0.0),
  );

  @override
  Widget build(BuildContext context) {
    return BaseAnimation(
      controller: controller,
      align: alignment1,
      rotate: rotate1,
      scale: scale1,
      child: BaseContainer(
        child: SignUpCard(
          function: onPressed,
        ),
      ),     
    );
  }
}