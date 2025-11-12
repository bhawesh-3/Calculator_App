import 'package:flutter/material.dart';

class Numpad extends StatelessWidget {
  final Function(String) onButtonTap;

  const Numpad({super.key, required this.onButtonTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // First row - Functions
          Expanded(
            child: Row(
              children: [
                _buildButton("AC", context,
                    isOperator: true,
                    color: Colors.white,
                    backgroundColor: Colors.orange[400]!),
                _buildButton("⌫", context,
                    isOperator: true,
                    color: Colors.white,
                    backgroundColor: Colors.orange[400]!),
                _buildButton("%", context,
                    isOperator: true,
                    color: Colors.white,
                    backgroundColor: Colors.orange[400]!),
                _buildButton("÷", context,
                    isOperator: true,
                    color: Colors.white,
                    backgroundColor: Colors.orange[400]!),
              ],
            ),
          ),
          const SizedBox(height: 12),
          // Number rows
          Expanded(
            child: Row(
              children: [
                _buildButton("7", context),
                _buildButton("8", context),
                _buildButton("9", context),
                _buildButton("×", context,
                    isOperator: true,
                    color: Colors.white,
                    backgroundColor: Colors.orange[400]!),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Row(
              children: [
                _buildButton("4", context),
                _buildButton("5", context),
                _buildButton("6", context),
                _buildButton("-", context,
                    isOperator: true,
                    color: Colors.white,
                    backgroundColor: Colors.orange[400]!),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Row(
              children: [
                _buildButton("1", context),
                _buildButton("2", context),
                _buildButton("3", context),
                _buildButton("+", context,
                    isOperator: true,
                    color: Colors.white,
                    backgroundColor: Colors.orange[400]!),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: Row(
              children: [
                _buildButton("00", context),
                _buildButton("0", context),
                _buildButton(".", context),
                _buildButton("=", context,
                    isOperator: true,
                    color: Colors.white,
                    backgroundColor: Colors.orange[600]!),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(
    String text,
    BuildContext context, {
    bool isOperator = false,
    Color color = Colors.black,
    Color backgroundColor = Colors.white,
  }) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(6),
        child: Material(
          shape: const CircleBorder(),
          elevation: 2,
          color: backgroundColor,
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () => onButtonTap(text),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: isOperator
                    ? Border.all(color: Colors.orange[300]!, width: 1.5)
                    : Border.all(color: Colors.grey[300]!, width: 1),
              ),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width *
                        0.045, // Responsive font size
                    color: color,
                    fontWeight: isOperator ? FontWeight.w600 : FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
