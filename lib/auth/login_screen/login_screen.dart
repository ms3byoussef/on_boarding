// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utils/app_theme.dart';
import 'components/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff004c4c),
                  Color(0xFF006666),
                  Color(0xFF008080),
                  Color(0xff66b2b2),
                ],
                stops: [0.1, 0.4, 0.8, 0.9],
              ),
            ),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 40),
                  ),
                  Text("Login",
                      textAlign: TextAlign.center,
                      style: AppTheme.whiteText
                          .copyWith(fontSize: 30, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 30.0),
                  const LoginForm()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
