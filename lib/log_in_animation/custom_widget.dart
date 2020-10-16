import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {

  const CircleIcon();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width * 0.30,
        height: MediaQuery.of(context).size.width * 0.30,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Theme.of(context).accentColor),
        child: IconButton(
            icon: Icon(Icons.add),
            onPressed: () {}),
      ),
    );
  }
}

class Button extends StatelessWidget {

  final String buttonText;
  final Function myFunction;

  Button({this.buttonText, this.myFunction});


  @override
  Widget build(BuildContext context) {

    return Flexible(
      child: FractionallySizedBox(
          widthFactor: 1.0,
          heightFactor: 0.60,
          child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(MediaQuery.of(context).size.width * 0.05),
                      bottomRight: Radius.circular(MediaQuery.of(context).size.width * 0.05))),
              padding: EdgeInsets.zero,
              onPressed: myFunction,
              child: FittedBox(
                  fit: BoxFit.fill,
                  child: Text(buttonText)
          )),
    ));
  }
}

class InputContainer extends StatelessWidget {

  final String text;

  const InputContainer({this.text});

  @override
  Widget build(BuildContext context) {
    return  Flexible(
      child: FractionallySizedBox(
          widthFactor: 0.85,
          heightFactor: 0.45,
          child: Container(
              padding: EdgeInsets.only(left: 9, bottom: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width * 0.05)),
                  color: Theme.of(context).accentColor,
              ),
              child: TextFormField(
                style: Theme.of(context).textTheme.headline6,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 5),
                  hintText: text,
                  border: InputBorder.none,
                ),
              ))
      ),
    );
  }
}