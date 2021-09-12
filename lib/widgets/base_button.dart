import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {

  final String text;
  final void Function()? onPressed;

  const BaseButton({Key? key, required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FractionallySizedBox(
        widthFactor: 1.0,
        heightFactor: 0.60,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            primary: const Color(0xFFBFA2DB),
            padding: const EdgeInsets.all(0),
            elevation: 0,
          ),
          onPressed: onPressed,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Text(text, style: Theme.of(context).textTheme.headline6)
          )
        ),
      ),
    );
  }
}
