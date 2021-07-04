import 'package:flutter/material.dart';

class SelectedTextForm extends StatelessWidget {
  final String labelText;
  final IconData icon;

  const SelectedTextForm({required this.labelText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white12,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          labelText: labelText,
          border: InputBorder.none,
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}