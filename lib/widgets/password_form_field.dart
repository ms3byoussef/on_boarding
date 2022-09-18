// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../utils/app_theme.dart';

class PasswordFormField extends StatefulWidget {
  TextEditingController? controller = TextEditingController();
  String? label;
  String? hintText;
  bool secure = true;
  Widget? prefixIcon = Container();

  String? Function(String?)? validator;
  PasswordFormField(
      {this.controller,
      this.label,
      this.hintText,
      this.validator,
      this.prefixIcon,
      Key? key})
      : super(key: key);

  @override
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 20,
          ),
          Text(widget.label!, style: AppTheme.whiteText),
          const SizedBox(height: 10.0),
          Container(
            width: double.infinity,
            height: 55,
            decoration: kBoxDecorationStyle,
            alignment: Alignment.centerLeft,
            child: TextFormField(
              style: AppTheme.whiteText
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
              obscureText: widget.secure,
              onSaved: (newValue) => widget.controller!.text = newValue!,
              controller: widget.controller,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: AppTheme.whiteText
                    .copyWith(fontSize: 15, fontWeight: FontWeight.w300),
                border: InputBorder.none,
                prefixIcon: widget.prefixIcon,
                prefixIconColor: Colors.white,
                floatingLabelBehavior: FloatingLabelBehavior.never,
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.secure = !widget.secure;
                      });
                    },
                    child: widget.secure == false
                        ? const Icon(
                            Icons.visibility,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: Colors.white,
                          )),
              ),
              validator: widget.validator!,
            ),
          ),
        ]);
  }
}
