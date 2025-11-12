import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'calculator_screen.dart';
import 'numpad.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String expression = '';
  String result = '';

  void onButtonTap(String value) {
    setState(() {
      if (value == "AC") {
        expression = '';
        result = '';
      } else if (value == "⌫") {
        if (expression.isNotEmpty) {
          expression = expression.substring(0, expression.length - 1);
          result = ''; // Clear result when editing expression
        } else {
          result = '';
        }
      } else if (value == "=") {
        _calculateResult(); // Calculate only when equals is pressed
      } else if (value == "00") {
        // Only allow "00" if there's already a number
        if (expression.isNotEmpty && _isLastCharacterNumeric()) {
          expression += value;
          result = ''; // Clear result when editing expression
        }
      } else if (value == ".") {
        // Prevent multiple decimal points in the same number
        if (_canAddDecimalPoint()) {
          expression += value;
          result = ''; // Clear result when editing expression
        }
      } else {
        expression += value;
        result = ''; // Clear result when editing expression
      }
    });
  }

  bool _isLastCharacterNumeric() {
    if (expression.isEmpty) return false;
    final lastChar = expression[expression.length - 1];
    return double.tryParse(lastChar) != null;
  }

  bool _canAddDecimalPoint() {
    if (expression.isEmpty) return true;
    
    // Find the last number in the expression
    final parts = expression.split(RegExp(r'[+\-×÷]'));
    final lastNumber = parts.last;
    
    // Check if the last number already has a decimal point
    return !lastNumber.contains('.');
  }

  void _calculateResult() {
    if (expression.isEmpty) {
      result = '';
      return;
    }

    try {
      // Clean the expression
      String exp = expression
          .replaceAll('×', '*')
          .replaceAll('÷', '/')
          .replaceAll(' ', '');

      // Check for division by zero
      if (exp.contains('/0') && !exp.contains('/0.')) {
        result = 'Cannot divide by zero';
        return;
      }

      Parser p = Parser();
      Expression expParsed = p.parse(exp);
      ContextModel cm = ContextModel();
      double eval = expParsed.evaluate(EvaluationType.REAL, cm);
      
      // Format the result to avoid unnecessary decimal places
      if (eval % 1 == 0) {
        result = eval.toInt().toString();
      } else {
        result = eval.toString();
      }
    } catch (e) {
      result = 'Error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Calculator",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            // Calculator Screen with white background
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: CalculatorScreen(expression: expression, result: result),
              ),
            ),
            // Orange divider
            Container(
              height: 2,
              color: Colors.orange[200],
            ),
            // Numpad with light orange background
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.orange[50],
                child: Numpad(onButtonTap: onButtonTap),
              ),
            ),
          ],
        ),
      ),
    );
  }
}