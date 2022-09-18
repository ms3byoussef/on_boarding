// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../utils/app_theme.dart';

class CustomFormField extends StatelessWidget {
  String? label;
  String? hintText;
  TextEditingController? controller = TextEditingController();
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  Widget? suffixIcon = Container();
  Widget? prefixIcon = const SizedBox(width: 5);
  bool readOnly;
  TextStyle? labelTextStyle = AppTheme.whiteText;

  CustomFormField({
    this.controller,
    this.label,
    this.hintText,
    this.validator,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
    this.readOnly = false,
    this.labelTextStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        Text(label!, style: labelTextStyle ?? AppTheme.whiteText),
        const SizedBox(height: 10.0),
        Container(
          height: 55,
          width: double.infinity,
          decoration: kBoxDecorationStyle,
          alignment: Alignment.centerLeft,
          child: TextFormField(
              readOnly: readOnly,
              style: AppTheme.whiteText
                  .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
              controller: controller,
              keyboardType: keyboardType!,
              onSaved: (newValue) => controller!.text = newValue!,
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                prefixIconColor: Colors.white,
                hintText: hintText!,
                border: InputBorder.none,
                alignLabelWithHint: true,
                hintStyle: AppTheme.whiteText
                    .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                suffixIcon: suffixIcon,
                suffixIconColor: Colors.white,
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
              validator: validator),
        ),
      ],
    );
  }
}
