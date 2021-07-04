import 'package:flutter/material.dart';
import 'package:flutter_dark_ui/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF201A31),
        primaryColor: Color(0xFF201A31),

      ),
      home: LoginScreen(),
    );
  }
}
