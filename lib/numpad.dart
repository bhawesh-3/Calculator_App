import 'package:flutter/material.dart';

class Numpad extends StatelessWidget {
  final Function(String) onButtonTap;

  const Numpad({super.key, required this.onButtonTap});

  Widget buildButton(String text, {Color color = Colors.black}) {
    return Expanded(
      child: TextButton(
        onPressed: () => onButtonTap(text),
        child: Text(
          text,
          style: TextStyle(fontSize: 28, color: color),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          children: [
            buildButton("AC", color: Colors.orange),
            buildButton("⌫", color: Colors.orange),
            buildButton("%", color: Colors.orange),
            buildButton("÷", color: Colors.orange),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [buildButton("7"), buildButton("8"), buildButton("9"), buildButton("×", color: Colors.orange)],
        ),
        const SizedBox(height: 20),
        Row(
          children: [buildButton("4"), buildButton("5"), buildButton("6"), buildButton("-", color: Colors.orange)],
        ),
        const SizedBox(height: 20),
        Row(
          children: [buildButton("1"), buildButton("2"), buildButton("3"), buildButton("+", color: Colors.orange)],
        ),
        const SizedBox(height: 20),
        Row(
          children: [buildButton("00"), buildButton("0"), buildButton("."), buildButton("=", color: Colors.orange)],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
