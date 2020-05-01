import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundrify/screens/reminder_screen.dart';
import 'package:laundrify/screens/signup_screen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isVisible = true;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: data.height / 6,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 43.0),
            child: Text(
              "Log In",
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                fontSize: 24,
                color: Color(0xff200015),
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
              )),
            ),
          ),
          SizedBox(
            height: data.height / 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 43.0),
            child: Text(
              "Welcome back",
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                fontSize: 16,
                color: Color(0xff200015),
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
              )),
            ),
          ),
          SizedBox(
            height: data.height / 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 43.0,
              right: 40,
            ),
            child: TextField(
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff999999))),
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              autofocus: false,
              decoration: InputDecoration(
                fillColor: Color(0xffFFFFFF),
                labelText: "Email",
                filled: true,
                labelStyle: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontStyle: FontStyle.normal,
                        fontSize: 18,
                        color: Color(0xffFF3471))),
                contentPadding:
                    EdgeInsets.only(left: 15, top: 12, bottom: 12, right: 65),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  borderSide: BorderSide(color: Color(0xffCCCCCC)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  borderSide: BorderSide(color: Color(0xffFF3471)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: data.height / 36,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 43.0,
              right: 40,
            ),
            child: TextField(
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff999999))),
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              autofocus: false,
              obscureText: _isVisible ? true : false,
              decoration: InputDecoration(
                fillColor: Color(0xffFFFFFF),
                labelText: "Password",
                suffixIcon: IconButton(
                  splashColor: Colors.transparent,
                  onPressed: _toggleVisibility,
                  icon: _isVisible
                      ? Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        )
                      : Icon(Icons.visibility, color: Colors.grey),
                ),
                suffixStyle: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    fontSize: 12,
                    color: Color(0xffFF3471),
                  ),
                ),
                filled: true,
                labelStyle: GoogleFonts.lato(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    color: Color(0xffFF3471),
                  ),
                ),
                contentPadding:
                    EdgeInsets.only(left: 15, top: 12, bottom: 12, right: 65),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  borderSide: BorderSide(color: Color(0xffCCCCCC)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                  borderSide: BorderSide(color: Color(0xffFF3471)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: data.height / 36,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReminderPage(),
                ),
              );
            },
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffFF3471),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                height: 56,
                width: 412.5,
                child: Center(
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                      fontSize: 25,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                    )),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: data.height / 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "New member?",
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                  fontSize: 16,
                  color: Color(0xff200015),
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.normal,
                )),
              ),
              SizedBox(width: data.width / 40),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0xffFF3471),
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  )),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
