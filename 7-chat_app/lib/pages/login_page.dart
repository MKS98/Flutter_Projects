import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2B475E),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Image.asset('assets/images/scholar.png'),
            Text(
              'Scholar Chat',
              style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Sign In',
              style: TextStyle(fontSize: 24, color: Colors.white70),
            ),
            CustomTextField(
              hintText: 'Email',
            ),
            CustomTextField(
              hintText: 'Password',
            ),
            CustomBottun(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'don\'t have an account ?',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '  Register',
                  style: TextStyle(color: Color(0xffC7EDE6)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
