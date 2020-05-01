import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundrify/screens/split_screen.dart';


class OnBoardingThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 24.0, top: 30.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130.0),
                child: Center(
                  child: CircleAvatar(
                    child: Image.asset("images/bus.png"),
                    backgroundColor: Color(
                      0xffFFE2F1,
                    ),
                    radius: 110,
                  ),
                ),
              ),
              SizedBox(
                height: 82.0,
              ),
              Center(
                child: Text(
                  "Swift Delivery",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Center(
                child: Text(
                  "And oh! We'd get your clothes",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              Center(
                child: Text(
                  "to you in no time.",
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      )),
                ),
              ),
              SizedBox(
                height: data.height / 3.6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "images/uc.png",
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset(
                    "images/uc.png",
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset("images/fc.png"),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 27.0, top: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return SplitScreen();
                      }),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Let's go",
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFF3471),
                            )),
                      ),
                      SizedBox(width: 12,),
                      Image.asset('images/arrow.png')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
