import 'package:flutter/material.dart';
import 'package:flutter_ui_challenge/log_in_animation/custom_widget.dart';

class SignUpCard extends StatelessWidget {

  final Function function;

  const SignUpCard({this.function});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        InputContainer(
          text: 'UserName',
        ),
        InputContainer(
          text: 'Email',
        ),
        InputContainer(
          text: 'Password',
        ),
        Button(
          buttonText: 'Sign Up',
          myFunction: function,
        ),
      ]),
    );
  }
}

class SignInCard extends StatelessWidget {

  final Function function;

  const SignInCard({this.function});


  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 20,),
        InputContainer(
          text: 'Email',
        ),
        InputContainer(
          text: 'Password',
        ),
        Button(buttonText: 'Sign In', myFunction: function),
      ]),
    );
  }
}
