import 'package:chat_app/constants.dart';
import 'package:chat_app/helper/show_snack_bar.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});
  //! created static variable to access the route in any page instead of writing it again
  static String id = 'RegisterPage';
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //? main.dart : route , login_page.dart : Navigator.pushnamed()
  String? email;

  String? password;

  //* GlobalKey object to use in the Form widget for validation
  GlobalKey<FormState> formKey = GlobalKey();

  //TODO remember to change from statelesswidget to statefulwidget bcz you are gonna change the UI of the page
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    //* loading screen widget while validating wrapping the Scaffold
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formKey,
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
                CustomFormTextField(
                  onChanged: (data) {
                    email = data;
                  },
                  hintText: 'Email',
                ),
                const SizedBox(height: 10),
                CustomFormTextField(
                  onChanged: (data) {
                    password = data;
                  },
                  hintText: 'Password',
                ),
                const SizedBox(height: 10),
                CustomBottun(
                  //! firebase auth usage (https://firebase.flutter.dev/docs/auth/usage/) : remember to enable firebase auth in your account
                  onTap: () async {
                    //! wrap the auth with condition to validate it refer to (CustomTextField)
                    if (formKey.currentState!.validate()) {
                      isloading = true;
                      setState(() {});
                      try {
                        //TODO registerUser method for auth and UserCredential
                        await registerUser();
                        Navigator.pushNamed(context, ChatPage.id);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  Text('The password provided is too weak.'),
                            ),
                          );
                        } else if (e.code == 'email-already-in-use') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'The account already exists for that email.'),
                            ),
                          );
                        }
                      } catch (ex) {
                        showSnackBar(context, 'there was an error!');
                      }
                      isloading = false;
                      setState(() {});
                      // //TODO created showSnackBar method with refactor for better msg view
                      //   showSnackBar(context, 'account have been created!');
                    }
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
        ),
      ),
    );
  }

  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
