import 'package:application/screens/auth/login.dart';
import 'package:application/screens/bottom-nav/bottomNav.dart';
import 'package:application/setting/const.dart';
import 'package:application/setting/size.dart';
import 'package:application/widget/auth/pass-textfield.dart';
import 'package:application/widget/auth/row-text.dart';
import 'package:application/widget/auth/textField.dart';
import 'package:application/widget/buttom.dart';
import 'package:application/widget/card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final key = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: background,
        ),
        body: CustomCard(
            height: 500,
            width: 350,
            child: Form(
                key: key,
                child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Register Now ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            20.h,
                            CustomTextField(
                                control: controller,
                                text: 'enter your email',
                                type: TextInputType.emailAddress,
                                icon: Icons.email),
                            20.h,
                            CustomTextField(
                                control: phoneController,
                                text: 'enter your phone',
                                type: TextInputType.phone,
                                icon: Icons.phone),
                            20.h,
                            CustomTextField(
                                control: nameController,
                                text: 'enter your name',
                                type: TextInputType.name,
                                icon: Icons.person),
                            20.h,
                            CustomPassTextField(
                              text: 'Enter your pass',
                              passController: passController,
                              icon: Icons.visibility,
                            ),
                            20.h,
                            CustomButton(
                              color: Colors.black,
                              color1: Colors.white,
                              text: 'Register',
                              onPressed: () async {
                                try {
                                  final credential1 = await FirebaseAuth
                                      .instance
                                      .createUserWithEmailAndPassword(
                                    email: controller.text,
                                    password: passController.text,
                                  );
                                  if (credential1.user != null) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => BottomNav()),
                                    );
                                    final SharedPreferences prefs =
                                        await SharedPreferences.getInstance();
                                    await prefs.setString(
                                        'email', controller.text);
                                    await prefs.setString(
                                        'name', nameController.text);
                                    await prefs.setString(
                                        'phone', phoneController.text);
                                  }
                                } on FirebaseAuthException catch (e) {
                                  SnackBar snackBar = SnackBar(
                                    content: Text(e.message.toString()),
                                    backgroundColor: Colors.red,
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                              },
                              horizontal: 110,
                              fontSize: 22,
                            ),
                            RowText(
                                text: 'login now',
                                text1: 'have already account!',
                                onPressed: () {
                                  navigator(context, const MyHomePage());
                                }),
                          ]),
                    )))));
  }
}
