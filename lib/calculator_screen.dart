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
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.05,
        vertical: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Expression display
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Text(
              expression.isEmpty ? '0' : expression,
              style: TextStyle(
                fontSize: screenWidth * 0.07, // Responsive font size
                color: const Color.fromARGB(255, 28, 28, 28),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          const SizedBox(height: 16),
          // Result display
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            reverse: true,
            child: Text(
              result.isEmpty ? '' : result,
              style: TextStyle(
                fontSize: screenWidth * 0.09, // Responsive font size
                fontWeight: FontWeight.bold,
                color: Colors.orange[700],
              ),
              textAlign: TextAlign.right,
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
