import 'package:application/screens/auth/onBoarding.dart';
import 'package:application/setting/const.dart';
import 'package:application/setting/size.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../widget/auth/pass-textfield.dart';
import '../../widget/auth/row-text.dart';
import '../../widget/auth/textField.dart';
import '../../widget/buttom.dart';
import '../../widget/card.dart';
import 'Signup.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final key = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: background,
      ),
      body: CustomCard(
        width: 350,
        height: 500,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Login ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                30.h,
                CustomTextField(
                    control: controller,
                    text: 'enter your email',
                    type: TextInputType.emailAddress,
                    icon: Icons.email),
                30.h,
                CustomPassTextField(
                  text: 'Enter your pass',
                  passController: passController,
                  icon: Icons.visibility,
                ),
                30.h,
                CustomButton(
                  horizontal: 120,
                  fontSize: 22,
                  color: Colors.black,
                  color1: Colors.white,
                  text: 'Login',
                  onPressed: () async {
                    try {
                      final credential = await FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: controller.text,
                              password: passController.text);
                      if (credential.user != null) {
                        navigator(context, const OnBoarding());
                        final prefs = await SharedPreferences.getInstance();
                        prefs.setString('email', controller.text);
                      }
                    } on FirebaseAuthException catch (e) {
                      SnackBar snackBar = SnackBar(
                        content: Text(e.message.toString()),
                        backgroundColor: Colors.red,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                ),
                RowText(
                    text: 'Register now',
                    text1: "Don't have account?",
                    onPressed: () {
                      navigator(context, const SignUp());
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
