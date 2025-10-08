import 'package:calculator/numpad.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Calculator",
          ),
        ),
        body: const Column(
          children: [
            Text("This is for Calculator Screen"),
            Spacer(),
            Divider(
              color: Colors.orange,
              thickness: 2,
            ),
            Numpad(),
          ],
        ),
      ),
    );
  }
}
