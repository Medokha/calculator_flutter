import 'package:calculator/calcbuttton.dart';
import 'package:flutter/material.dart';

import 'op_button.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text(
          "Calculator",
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * .2,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "$result",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                calcbutton("7", on_click),
                calcbutton("8", on_click),
                calcbutton("9", on_click),
                opbutton("/", on_click_op),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                calcbutton("4", on_click),
                calcbutton("5", on_click),
                calcbutton("6", on_click),
                opbutton("*", on_click_op),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                calcbutton("1", on_click),
                calcbutton("2", on_click),
                calcbutton("3", on_click),
                opbutton("+", on_click_op),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                calcbutton(".", on_click),
                calcbutton("0", on_click),
                opbutton("=", on_equal),
                opbutton("-", on_click_op),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String cal(String lhs ,String op,String rhs ){
    double lhs_ =double.parse(lhs);
    double rhs_ =double.parse(rhs);
    double res_ =0;
    if(op=='+'){
      res_=lhs_+rhs_;
    }else if(op=='-'){
      res_=lhs_-rhs_;
    }else if(op=='*'){
      res_=lhs_*rhs_;
    }else if(op=='/'){
      res_=lhs_/rhs_;
    }
    return res_.toString();
  }

  String res = '';
  String op = "";

  void on_equal(valve){
    String lhs =result;
    res=cal(lhs,op,res);
    result=res;
    op = valve;
    res = '';
    setState(() {

    });
  }
  void on_click_op(value) {
    if(result.isEmpty){
      return;
    }
    if (op.isEmpty) {
      res = result;

    }
    else{
      String lhs =result;
      res=cal(lhs,op,res);
    }
    op = value;
    result = '';
    setState(() {

    });
  }

  void on_click(value) {
    if(op=='='){
      op='';
      result=value;
    }else{
      result += value;
    }
    setState(() {});
  }
}
