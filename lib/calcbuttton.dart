import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class calcbutton extends StatelessWidget {
  String text;
  Function value;
  calcbutton(this.text,this.value);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.teal),
              mouseCursor: MaterialStateProperty.all(SystemMouseCursors.resizeUp),
            ),
            onPressed: () {
              value(text);
            },
            child: Text(
              "$text",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50,color: Colors.black),
            )));
  }
}
