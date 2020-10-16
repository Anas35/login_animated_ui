import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_ui_challenge/log_in_animation/custom_widget.dart';

class SignUpAnimation extends StatelessWidget {

  final Widget m2;
  final AnimationController control;

  SignUpAnimation({this.control, this.m2});

  Animation<double> containerWidth;
  Animation<double> containerHeight;
  Animation<double> rotate;
  Animation<double> topValue;
  Animation<double> leftValue;

  _setValue() {
    containerWidth = Tween<double>(begin: 1.3, end: 2.5,).animate(
        CurvedAnimation(parent: control, curve: Interval(0.0, 0.4, ))
    );
    containerHeight = Tween<double>(begin: 1.35, end: 3.0,).animate(
        CurvedAnimation(parent: control, curve: Interval(0.0, 0.4, ))
    );

     rotate =  TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 0.4),
          weight: 45.0,
        ),
        TweenSequenceItem(
            tween: ConstantTween<double>(0.4).chain(CurveTween(curve: Curves.easeInCubic)),
            weight: 20.0
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.4, end: -math.pi/2).chain(CurveTween(curve: Curves.easeIn)),
          weight: 35.0,
        ),
      ],
    ).animate(control);

     topValue = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.075, end: 0.45),
          weight: 45.0,
        ),
        TweenSequenceItem(
            tween: ConstantTween<double>(0.45).chain(CurveTween(curve: Curves.easeInCubic)),
            weight: 20.0
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.45, end: 0.625),
          weight: 35.0,
        ),
      ],
    ).animate(control);

     leftValue =  TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.07, end: 0.30),
          weight: 45.0,
        ),
        TweenSequenceItem(
            tween: ConstantTween<double>(0.30),
            weight: 20.0
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.30, end: 0.28),
          weight: 35.0,
        ),
      ],
    ).animate(control);
  }

  @override
  Widget build(BuildContext context) {

   _setValue();

    return AnimatedBuilder(
      animation: control,
      child: m2,
      builder: (context, child) => Positioned(
          top: MediaQuery.of(context).size.height * topValue.value,
          left: MediaQuery.of(context).size.width * leftValue.value,
          child: Container(
              transform: Matrix4.rotationZ(rotate.value),
              padding: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width * 0.05)),
                color: Theme.of(context).primaryColor,
                /*boxShadow: [
                    BoxShadow(
                      offset: Offset(
                        Tween<double>(begin: 0, end: 18,).animate(control).value,
                        Tween<double>(begin: 8, end: 17,).animate(control).value,),
                      blurRadius: 0.0,
                      spreadRadius: Tween<double>(begin: 2.5, end: 4.5,).animate(
                        CurvedAnimation(parent: control, curve: Interval(0.0,0.5) )
                      ).value,
                      color: Theme.of(context).primaryColor.withOpacity(0.65),
                    )
                  ]*/
              ),
              width: MediaQuery.of(context).size.width / containerWidth.value,
              height: 2 * MediaQuery.of(context).size.width / containerHeight.value,
              child: Column(
                children: [
                  SizeTransition(
                    axisAlignment: 1.0,
                    sizeFactor: Tween<double>(begin: 1.0, end: 0.0,).animate(
                        CurvedAnimation(
                            parent: control,
                            curve: Interval(0.0, 0.3, curve: Curves.easeIn)
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: CircleIcon(),
                    ),
                  ),
                  child,
                ],
              ))
      ),
    );
  }
}

class SignInAnimation extends StatelessWidget {

  final Widget m1;
  final AnimationController control;

  SignInAnimation({this.control, this.m1});

  Animation<double> containerWidth1;
  Animation<double> containerHeight1;
  Animation<double> rotate;
  Animation<double> topValue;
  Animation<double> leftValue;

  _setTween() {
     containerWidth1 = Tween<double>(begin: 2.5, end: 1.3,).animate(
      // control
        CurvedAnimation(parent: control, curve: Interval(0.6, 1.0, ))
    );

    containerHeight1 = Tween<double>(begin: 3.0, end: 1.35,).animate(
        CurvedAnimation(parent: control, curve: Interval(0.6, 1.0, ))
      // control
    );

     rotate =  TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: -math.pi/2.0, end: -math.pi/2.3).chain(CurveTween(curve: Curves.linear)),
          weight: 45.0,
        ),
        TweenSequenceItem(
            tween: ConstantTween<double>(-math.pi/2.3).chain(CurveTween(curve: Curves.easeInCubic)),
            weight: 20.0
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: -math.pi/2.3, end: 0.0)
              .chain(CurveTween(curve: Curves.linear)),
          weight: 35.0,
        ),
      ],
    ).animate(control);

     topValue = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.625, end: 0.35),
          weight: 45.0,
        ),
        TweenSequenceItem(
            tween: ConstantTween<double>(0.35).chain(CurveTween(curve: Curves.easeInCubic)),
            weight: 20.0
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.35, end: 0.075),
          weight: 35.0,
        ),
      ],
    ).animate(control);

     leftValue =  TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.30, end: 0.20),
          weight: 45.0,
        ),
        TweenSequenceItem(
            tween: ConstantTween<double>(0.20),
            weight: 20.0
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.20, end: 0.07),
          weight: 35.0,
        ),
      ],
    ).animate(control);
  }

  @override
  Widget build(BuildContext context) {

   _setTween();

    return AnimatedBuilder(
      animation: control,
      child: m1,
      builder: (context, child) => Positioned(
        top: MediaQuery.of(context).size.height * topValue.value,
        left: MediaQuery.of(context).size.width * leftValue.value,
        child: Container(
          transform: Matrix4.rotationZ(rotate.value),
          padding: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width * 0.075)),
            color: Theme.of(context).primaryColor,
          ),
          width: MediaQuery.of(context).size.width/ containerWidth1.value,
          height: 2 * MediaQuery.of(context).size.width / containerHeight1.value,
          child: Column(
            children: [
              SizeTransition(
                  axisAlignment: 1.0,
                  sizeFactor: Tween<double>(begin: 0.0, end: 1.0,).animate(
                      CurvedAnimation(
                          parent: control,
                          curve: Interval(0.5, 1.0, curve: Curves.easeIn)
                      )
                  ),
                  child: Align(
                      heightFactor: 1.25,
                      alignment: Alignment.bottomCenter,
                      child: FlutterLogo(size: MediaQuery.of(context).size.width * 0.25,))
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}