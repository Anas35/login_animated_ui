import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {

  const CircleIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CircleAvatar(
          radius: 49,
          backgroundColor: const Color(0xFFF0D9FF),
          child: IconButton(
            color: Colors.black,
            iconSize: 30,
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
