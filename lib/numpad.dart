import 'package:flutter/material.dart';

class Numpad extends StatelessWidget {
  const Numpad({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "AC",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.backspace_outlined),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "%",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "÷",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "7",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "8",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "9",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "×",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "4",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "5",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "6",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "-",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "1",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "2",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "3",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "+",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "00",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "0",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  ".",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "=",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
