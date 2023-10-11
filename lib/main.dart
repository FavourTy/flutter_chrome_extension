import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';

void main() {
  runApp( MaterialApp(
    theme: ThemeData(
      useMaterial3: true
    ),
    home: const Calculator(),
    debugShowCheckedModeBanner: false,
  ));
}


class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.purple,
        title: const Text("Calculator",
        style:  TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
        ),
        centerTitle: true,
      ),
      body: const SimpleCalculator(
        value: 0.0,
        theme: CalculatorThemeData(
          operatorColor: Colors.purple,
          commandColor: Colors.purple,
          commandStyle: TextStyle(color:Colors.white)
        )
      ),
    );
  }
}
