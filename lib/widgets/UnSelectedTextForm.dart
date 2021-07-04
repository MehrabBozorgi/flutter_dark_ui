import 'package:flutter/material.dart';

class UnSelectedTextForm extends StatelessWidget {
  final String labelText;
  final IconData icon;

  const UnSelectedTextForm({required this.labelText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        cursorColor: Colors.white54,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white54,
          ),
          labelText: labelText,
          border: InputBorder.none,
          labelStyle: TextStyle(
            color: Colors.white54,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}