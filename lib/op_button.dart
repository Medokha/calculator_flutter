import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class opbutton extends StatelessWidget {
  String text;
  Function value;
  opbutton(this.text,this.value);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white10),
            mouseCursor: MaterialStateProperty.all(SystemMouseCursors.resizeUp),
          ),
            onPressed: () {
              value(text);
            },
            child: Text(
              "$text",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 55,color: Colors.black),
            )));
  }
}
