// ignore_for_file: library_private_types_in_public_api, avoid_print, duplicate_ignore

import 'package:flutter/material.dart';

import '../../../app_theme.dart';
import '../../../validator.dart';
import '../../../widgets/custom_form_field.dart';
import '../../../widgets/custom_text_button.dart';
import '../../../widgets/password_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  bool _rememberMe = false;

  @override
  void initState() {
    super.initState();
  }

  Widget _buildEmailTF() {
    return CustomFormField(
      label: 'Email',
      controller: email,
      hintText: 'Enter your Email',
      keyboardType: TextInputType.emailAddress,
      validator: (value) => Validator.validateEmail(value!),
      prefixIcon: const Icon(
        Icons.email,
        color: Colors.white,
      ),
    );
  }

  Widget _buildPasswordTF() {
    return PasswordFormField(
      label: "Password",
      controller: password,
      hintText: 'Enter your Email',
      validator: (value) => Validator.validatePassword(value!),
      prefixIcon: const Icon(
        Icons.lock,
        color: Colors.white,
      ),
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => Navigator.pushNamed(context, "/reset_password"),
        child: Text(
          "Forget Password",
          style: AppTheme.whiteText,
        ),
      ),
    );
  }

  Widget _buildRememberMeCheckbox() {
    return SizedBox(
      height: 30.0,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: _rememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _rememberMe = value!;
                });
              },
            ),
          ),
          Text(
            "Remember me",
            style: AppTheme.whiteText,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: CustomTextButton(
        onPressed: () {},
        text: "Login",
      ),
    );
  }

  Widget _buildSignUpWithText() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        children: [
          Text(
            "__OR__",
            style: AppTheme.whiteText.copyWith(fontSize: 18),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "you don't have an account ",
                style: AppTheme.whiteText
                    .copyWith(fontSize: 18, color: AppTheme.backgroundColor),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/sign_up");
                },
                child: Text(
                  " Sign up",
                  style: AppTheme.whiteText.copyWith(fontSize: 21),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              _buildEmailTF(),
              _buildPasswordTF(),
              _buildForgotPasswordBtn(),
              _buildRememberMeCheckbox(),
              _buildLoginBtn(),
              _buildSignUpWithText(),
            ],
          ),
        ));
  }
}
