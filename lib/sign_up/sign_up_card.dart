import 'package:flutter/material.dart';
import 'package:login_animated_ui/widgets/base_button.dart';
import 'package:login_animated_ui/widgets/circle_icon.dart';
import 'package:login_animated_ui/widgets/input_text.dart';

class SignUpCard extends StatelessWidget {

  final void Function()? function;

  const SignUpCard({Key? key, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleIcon(),
        const InputText(text: 'UserName'),
        const InputText(text: 'Email'),
        const InputText(text: 'Password'),
        BaseButton(text: 'Sign Up', onPressed: function),
      ],
    );
  }
}