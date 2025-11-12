import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  final String expression;
  final String result;

  const CalculatorScreen({
    super.key,
    required this.expression,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Makes it take full width
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end, // Right-align content
        children: [
          Text(
            expression.isEmpty ? '0' : expression,
            style: const TextStyle(fontSize: 36, color: Colors.black54),
            textAlign: TextAlign.right, // Ensures text itself aligns right
          ),
          const SizedBox(height: 8),
          Text(
            result.isEmpty ? '' : result,
            style: const TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
