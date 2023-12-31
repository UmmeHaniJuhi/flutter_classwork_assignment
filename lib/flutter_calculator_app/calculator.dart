import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:math_expressions/math_expressions.dart';
import 'color.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key:key);

  @override
  State<CalculatorApp> createState() =>  _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp>{
  double firstNum = 0.0;
  double secondNum = 0.0;
  var input = '';
  var output = '';
  var operator = '';


  onButtonClick(String value) {
    if (value == "AC") {
      input = '';
      output = '';
    } else if (value == "<") {
      if (input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      }
    } else if (value == "=") {
      if (input.isNotEmpty) {
        var userInput = input;
        userInput = userInput.replaceAll("x", "*");
        Parser p = Parser();
        Expression expression = p.parse(userInput);
        ContextModel cm = ContextModel();
        var finalValue = expression.evaluate(EvaluationType.REAL, cm);
        output = finalValue.toString();
      }
      input = output;
    } else if (value == "%") {
      if (input.isNotEmpty) {
        input += "/100";
      }
    } else {
      input += value;
    }
    setState(() {});
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      input,
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      output,
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              )),

          Row(
            children: [
              button(text: "AC", buttonBgColor: operatorColor, tColor: orangeColor),
              button(text: "<", buttonBgColor: operatorColor, tColor: orangeColor),
              button(text: "X", buttonBgColor: operatorColor, tColor: orangeColor),
              button(text: "/", buttonBgColor: operatorColor, tColor: orangeColor),
            ],
          ),
          Row(
            children: [
              button(text: "(" ,tColor: orangeColor, buttonBgColor: operatorColor),
              button(text: ")",tColor: orangeColor, buttonBgColor: operatorColor),
              button(text: "%", tColor: orangeColor, buttonBgColor: operatorColor),
              button(text: "*", tColor: orangeColor, buttonBgColor: operatorColor),
            ],
          ),
          Row(
            children: [
              button(text: "1"),
              button(text: "2"),
              button(text: "3"),
              button(text: "-", tColor: orangeColor, buttonBgColor: operatorColor),
            ],
          ),
          Row(
            children: [
              button(text: "4"),
              button(text: "5"),
              button(text: "6"),
              button(text: "+", tColor: orangeColor, buttonBgColor: operatorColor),
            ],
          ),

          Row(
            children: [
              button(text: "7"),
              button(text: "8"),
              button(text: "9"),
              button(text: "=", tColor: orangeColor, buttonBgColor: operatorColor),
            ],
          ),
          Row(
            children: [
              button(text: "0"),
              button(text: "00"),
              button(text: "√", tColor: orangeColor, buttonBgColor: operatorColor),
              button(text: ".", tColor: orangeColor, buttonBgColor: operatorColor),

            ],
          )
        ],
      ),
    );
  }
  Widget button({
    text, tColor = Colors.white, buttonBgColor = buttonColor,
  }){
    return Expanded(child: Container(
      margin: const EdgeInsets.all(8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16),
          primary: buttonBgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Adjust the radius as needed
          ),
        ),
        onPressed: () => onButtonClick(text),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: tColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

    ));
  }

}