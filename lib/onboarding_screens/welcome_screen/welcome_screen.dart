// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors
import 'package:flutter/material.dart';

import '../../app_theme.dart';
import '../../widgets/custom_text_button.dart';
import '../../widgets/default_btn.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * .4,
                    width: size.width,
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text("WELCOME TO CAR EMPIRE ",
                        style: AppTheme.blueHeadline),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Never a better time\n than now to start.",
                    style: AppTheme.blueHeadline.copyWith(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              // SizedBox(
              //   height: size.height * .1,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultButton(
                      text: "Sign Up",
                      press: () {
                        Navigator.of(context).pushNamed("/sign_up");
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextButton(
                      text: "Login",
                      onPressed: () {
                        Navigator.of(context).pushNamed("/login");
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
