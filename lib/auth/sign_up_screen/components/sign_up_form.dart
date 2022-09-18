// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'package:flutter/material.dart';
import 'package:login/app_theme.dart';

import '../../../validator.dart';
import '../../../widgets/custom_form_field.dart';
import '../../../widgets/custom_text_button.dart';
import '../../../widgets/password_form_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController phone = TextEditingController();

  TextEditingController address = TextEditingController();

  TextEditingController password = TextEditingController();

  TextEditingController confirmPassword = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  Widget _buildNameTF() {
    return CustomFormField(
      label: "Name",
      controller: name,
      hintText: "Enter your name",
      keyboardType: TextInputType.name,
      validator: (value) => Validator.validateEmpty(value!),
      prefixIcon: const Icon(
        Icons.person,
        color: Colors.white,
      ),
    );
  }

  Widget _buildEmailTF() {
    return CustomFormField(
      label: "Email",
      controller: email,
      hintText: "Enter your email",
      keyboardType: TextInputType.emailAddress,
      validator: (value) => Validator.validateEmail(value!),
      prefixIcon: const Icon(
        Icons.email,
        color: Colors.white,
      ),
    );
  }

  Widget _buildPhoneTF() {
    return CustomFormField(
      label: "Phone",
      controller: phone,
      hintText: "Enter your phone",
      keyboardType: TextInputType.phone,
      validator: (value) => Validator.validateEmpty(value!),
      prefixIcon: const Icon(
        Icons.phone,
        color: Colors.white,
      ),
    );
  }

  Widget _buildPasswordTF() {
    return PasswordFormField(
      label: "password",
      controller: password,
      hintText: "ex *********",
      validator: (value) => Validator.validatePassword(value!),
      prefixIcon: const Icon(
        Icons.lock,
        color: Colors.white,
      ),
    );
  }

  Widget _buildLoginBtn() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: CustomTextButton(onPressed: () {}, text: "Sign Up"),
    );
  }

  Widget _buildSignInWithText() {
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
                "have an account ",
                style: AppTheme.whiteText
                    .copyWith(fontSize: 18, color: AppTheme.backgroundColor),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/login");
                },
                child: Text(
                  ' Sign in',
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              _buildNameTF(),
              _buildEmailTF(),
              _buildPhoneTF(),
              _buildPasswordTF(),
              _buildLoginBtn(),
              _buildSignInWithText(),
            ],
          ),
        ));
  }
}
