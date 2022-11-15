import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  //! created static variable to access the route in any page instead of writing it again
  static String id =
      'RegisterPage'; //? main.dart : route , login_page.dart : Navigator.pushnamed()
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            const SizedBox(height: 75),
            Image.asset(
              'assets/images/scholar.png',
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Scholar Chat',
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 75),
            Row(
              children: [
                Text(
                  'Register',
                  style: TextStyle(fontSize: 24, color: Colors.white70),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomTextField(
              onChanged: (data) {
                email = data;
              },
              hintText: 'Email',
            ),
            const SizedBox(height: 10),
            CustomTextField(
              onChanged: (data) {
                password = data;
              },
              hintText: 'Password',
            ),
            const SizedBox(height: 10),
            CustomBottun(
              //! firebase auth usage (https://firebase.flutter.dev/docs/auth/usage/) : remember to enable firebase auth in your account
              onTap: () async {
                try {
                  UserCredential user = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: email!, password: password!);
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('The password provided is too weak.'),
                      ),
                    );
                  } else if (e.code == 'email-already-in-use') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content:
                            Text('The account already exists for that email.'),
                      ),
                    );
                  }
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('account have been cearted!'),
                  ),
                );
              },
              text: 'Register',
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account?',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    '  Login',
                    style: TextStyle(color: Color(0xffC7EDE6)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
