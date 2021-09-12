import 'package:flutter/material.dart';

class InputText extends StatelessWidget {

  final String text;
  final double verticalPadding;

  const InputText({Key? key, required this.text, this.verticalPadding = 7.5}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Flexible(
      child: FractionallySizedBox(
        widthFactor: 0.85,
        heightFactor: 0.45,
        child: Container(
          padding: const EdgeInsets.only(left: 9, bottom: 6),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            color: Color(0xFFF0D9FF)
          ),
          child: TextFormField(
            style: Theme.of(context).textTheme.headline6,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                top: verticalPadding,
                left: 5.0,
                bottom: verticalPadding,
              ),
              hintText: text,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}