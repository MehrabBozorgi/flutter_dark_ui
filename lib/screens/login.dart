import 'package:flutter/material.dart';
import 'package:flutter_dark_ui/screens/singUp.dart';
import 'package:flutter_dark_ui/widgets/ButtonWidget.dart';
import 'package:flutter_dark_ui/widgets/SelectedTextForm.dart';
import 'package:flutter_dark_ui/widgets/Text_Widget.dart';
import 'package:flutter_dark_ui/widgets/UnSelectedTextForm.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 75),
            Image.asset(
              'login.png',
              width: double.infinity,
              height: 170,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5),
              child: Text(
                'Please sign in to continue',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SelectedTextForm(
                icon: Icons.mail_outline_rounded, labelText: 'EMAIL'),
            UnSelectedTextForm(icon: Icons.lock_outline, labelText: 'PASSWORD'),
            ButtonWidget(text: 'Login'),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                'Forget Password ?',
                style: TextStyle(
                  color: Color(0xFF0CF4E2),
                ),
              ),
            ),
            SizedBox(height: 45),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ),
                );
              },
              child: Text_Widget(
                  text: 'Dont have an account ?', signText: 'SIGN UP'),
            ),
          ],
        ),
      ),
    );
  }
}
