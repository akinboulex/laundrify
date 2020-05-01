import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundrify/screens/login_screen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isVisible = true;
  bool _isCVisible = true;

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _toggleVisibilityC() {
    setState(() {
      _isCVisible = !_isCVisible;
    });
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          var _data = MediaQuery.of(context).size;
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0)), //this right here
            child: Container(
              height: _data.height / 4.3,
              width: _data.width / 4.2,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: <Widget>[
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 24.0),
                            child: Image.asset(
                              "images/mark.png",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        Text(
                          "Yo! Yo!! Yo!!! You’ve successfully",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Color(0xff200015),
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                        Text(
                          "signed up!!!",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Color(0xff200015),
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: Text(
                              "Continue",
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    color: Color(0xffFF3471),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    fontStyle: FontStyle.normal),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 84.0, left: 42),
              child: Text(
                "Sign Up",
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                  color: Color(0xff200015),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 24,
                )),
              ),
            ),
            SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 43.0),
              child: Text(
                "We’d like you to kindly provide your details.",
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                  color: Color(0xff200015),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                )),
              ),
            ),
            SizedBox(
              height: 40.0,
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
              height: 24.0,
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
                keyboardType: TextInputType.number,
                autocorrect: false,
                autofocus: false,
                decoration: InputDecoration(
                  fillColor: Color(0xffFFFFFF),
                  labelText: "Phone Number",
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
              height: 24.0,
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
                  labelText: "Create Password",
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
              height: 24.0,
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
                obscureText: _isCVisible ? true : false,
                decoration: InputDecoration(
                  fillColor: Color(0xffFFFFFF),
                  labelText: "Confirm Password",
                  suffixIcon: IconButton(
                    splashColor: Colors.transparent,
                    onPressed: _toggleVisibilityC,
                    icon: _isCVisible
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
              height: data.height / 12,
            ),
            GestureDetector(
              onTap: () {
                _showDialog();
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
            ),
            SizedBox(
              height: data.height / 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Not a new member?",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                    fontSize: 14,
                    color: Color(0xff200015),
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                  )),
                ),
                SizedBox(width: data.width / 40),
                GestureDetector(
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));},
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
