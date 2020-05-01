import "package:flutter/material.dart";
import "package:laundrify/screens/onboardingone.dart";
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return OnBoardingOne();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Image.asset(
            "images/splashpic.png",
          ),
        ),
        SizedBox(height: 24,),
        Text(
          "We wash. We deliver",
          style: GoogleFonts.lato(
            color: Color(0xff200015),
           fontWeight: FontWeight.w400,
            fontSize: 16.0,
          ),
        )
      ],
    ));
  }
}
