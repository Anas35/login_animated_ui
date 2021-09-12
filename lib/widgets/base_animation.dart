import 'package:flutter/material.dart';

class BaseAnimation extends StatelessWidget {

  final Widget child;
  final AnimationController controller;
  final Animation<double> rotate;
  final Animation<double> scale;
  final Animation<Alignment> align;

  const BaseAnimation({
    Key? key,
    required this.controller,
    required this.child,
    required this.rotate,
    required this.scale,
    required this.align
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      child: child,
      builder: (context, child) {
        return Center(
          child: Transform(
            alignment: align.value,
            transform: Matrix4.identity()
            ..rotateZ(rotate.value)
            ..scale(scale.value, scale.value, 1.0),
            child: child,
          ),
        );
      }
    );
  }
}
