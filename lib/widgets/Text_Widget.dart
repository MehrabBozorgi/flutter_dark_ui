import 'package:flutter/material.dart';

class Text_Widget extends StatelessWidget {
  final String text;
  final String signText;

  const Text_Widget({required this.text, required this.signText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        Text(
          ' ' + signText,
          style: TextStyle(
            color: Color(0xFF0CF4E2),
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}