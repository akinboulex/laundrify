import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundrify/screens/login_screen.dart';
import 'package:laundrify/screens/signup_screen.dart';

class SplitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image.asset("images/splashpic.png"),
          ),
          SizedBox(
            height: 37,
          ),
          Text(
            "Welcome to Laundrify",
            style: GoogleFonts.lato(
                textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    color: Color(
                      0xff200015,
                    ))),
          ),
          SizedBox(
            height: 115,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return SignUp();
                }),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffFF3471),
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              height: 48,
              width: 275,
              child: Center(
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  )),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
                border: Border.all(
                  color: Color(0xffFF3471),
                ),
              ),
              height: 48,
              width: 275,
              child: Center(
                child: Text(
                  "Log In",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xffFF3471),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  )),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
