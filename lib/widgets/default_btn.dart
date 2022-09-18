import 'package:flutter/material.dart';

import '../../utils/app_theme.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
    this.height = 56,
  }) : super(key: key);
  final String? text;
  final double height;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          primary: Colors.white,
          backgroundColor: AppTheme.primaryColor,
        ),
        onPressed: press as void Function()?,
        child: Text(text!, style: AppTheme.whiteText),
      ),
    );
  }
}
