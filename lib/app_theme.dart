import 'package:flutter/material.dart';

class AppTheme {
  static const Color backgroundColor = Color(0XFFeff5ff);
  static Color primaryColor = const Color(0xff004c4c);
  static Color accentColor = const Color(0xff66b2b2);
  static double kPadding = 20;

  static TextStyle introHeadline = const TextStyle(
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  static TextStyle introText = const TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle blueHeadline = TextStyle(
    color: primaryColor,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );
  static TextStyle whiteText = const TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
  static TextStyle primaryColorText = TextStyle(
    color: primaryColor,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );
  static TextStyle hintText = const TextStyle(
    color: Color(0xffababab),
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bottomNavText = const TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle cardText = const TextStyle(
    color: Color.fromARGB(255, 0, 0, 0),
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
  static TextStyle orderText = const TextStyle(
    color: Color(0xffababab),
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
}

ThemeData myTheme() {
  const textTheme2 = TextTheme(
    caption: TextStyle(
      color: Colors.black,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    ),
  );
  const appBarTheme2 = AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    toolbarHeight: 60,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 26,
      fontWeight: FontWeight.bold,
    ),
  );
  return ThemeData(
    inputDecorationTheme: inputDecorationTheme(),
    textTheme: textTheme2,
    appBarTheme: appBarTheme2,
    fontFamily: "OpenSans",
    primaryColor: const Color(0xff1159D2),
    backgroundColor: const Color(0XFFeff5ff),
    // ignore: deprecated_member_use
    accentColor: const Color(0xffffffff),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppTheme.primaryColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.never,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: const OutlineInputBorder(
      borderSide: BorderSide.none,
      gapPadding: 8,
    ),
  );
}

final kBoxDecorationStyle = BoxDecoration(
  color: const Color(0x0fffffff),
  borderRadius: BorderRadius.circular(20.0),
  boxShadow: const [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
