import 'package:flutter/material.dart';
import 'package:login_animated_ui/widgets/base_button.dart';
import 'package:login_animated_ui/widgets/input_text.dart';

class SignInCard extends StatelessWidget {

  final void Function()? function;

  const SignInCard({Key? key, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.stacked,
          ),
        ),
        const InputText(text: 'Email', verticalPadding: 10),
        const InputText(text: 'Password', verticalPadding: 10),
        BaseButton(text: 'Sign In', onPressed: function),
      ],
    );
  }
}
