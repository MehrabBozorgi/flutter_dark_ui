import 'package:flutter/material.dart';
import 'package:flutter_dark_ui/widgets/ButtonWidget.dart';
import 'package:flutter_dark_ui/widgets/SelectedTextForm.dart';
import 'package:flutter_dark_ui/widgets/Text_Widget.dart';
import 'package:flutter_dark_ui/widgets/UnSelectedTextForm.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 5),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
              child: Text(
                'Create Account',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
              child: Text(
                'Please fill the input blow here',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 16),
              ),
            ),
            SizedBox(height: 15),
            SelectedTextForm(
                labelText: 'FULL NAME', icon: Icons.person_outline_rounded),
            UnSelectedTextForm(
                labelText: 'PHONE', icon: Icons.phone_android_sharp),
            UnSelectedTextForm(
                labelText: 'EMAIL', icon: Icons.mail_outline_rounded),
            UnSelectedTextForm(labelText: 'PASSWORD', icon: Icons.lock_outline),
            UnSelectedTextForm(
                labelText: 'CONFIRM PASSWORD', icon: Icons.lock_outline),
            SizedBox(height: 25),
            ButtonWidget(text: 'SIGN UP'),
            SizedBox(height: 55),
            Text_Widget(text: 'Already have account ?', signText: 'Sign In'),
          ],
        ),
      ),
    );
  }
}
