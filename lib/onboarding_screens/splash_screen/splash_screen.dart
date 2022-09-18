// ignore_for_file: prefer_typing_uninitialized_variables, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //  Color(0xFFF7F7F7),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(31),
                  gradient: const LinearGradient(
                    colors: [Color(0xff004c4c), Color(0xff008080)],
                    stops: [0, 1],
                    begin: Alignment(-1.00, 0.00),
                    end: Alignment(1.00, -0.00),
                    // angle: 90,
                    // scale: undefined,
                  ),
                  image: const DecorationImage(
                    opacity: .8,
                    image: AssetImage(
                      "assets/images/logo.png",
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
                // margin: const EdgeInsets.all(20),
                // padding: const EdgeInsets.all(30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
