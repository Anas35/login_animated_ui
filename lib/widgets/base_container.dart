import 'package:flutter/material.dart';


class BaseContainer extends StatelessWidget {

  final Widget child;

  const BaseContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          width: constraints.maxWidth - 100,
          height: constraints.maxHeight - 100,
          decoration: const BoxDecoration(
            color: Color(0xFFF3F1F5),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          child: child,
        );
      }
    );
  }
}