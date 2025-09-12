import 'dart:async';

import 'package:bmi_app/Screens/WelcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(radius: 180, backgroundColor: Colors.white),
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Center(
                child: Lottie.asset("assets/images/bmi_anime2.json"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
