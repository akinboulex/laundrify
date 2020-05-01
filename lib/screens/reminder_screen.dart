import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundrify/screens/home_screen.dart';

class ReminderPage extends StatefulWidget {
  @override
  _ReminderPageState createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          var _data = MediaQuery.of(context).size;
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0)), //this right here
            child: Container(
              height: _data.height / 3.9,
              width: _data.width / 2.7,
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
                          "Thanks for your time.",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Color(0xff200015),
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                        Text(
                          "Now, we'd notify you when it's",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Color(0xff200015),
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                        Text(
                          "your laundry day.",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Color(0xff200015),
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                        SizedBox(
                          height: 30 ,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Take me home, baby!",
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
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 7.0, top: 52),
            child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Color(0xffFF3471),
                ),
                onPressed: () {}),
          ),
          SizedBox(
            height: data.height / 35,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Let's remind you about your",
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                fontSize: 20,
                color: Color(0xff200015),
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "clothings!",
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                fontSize: 20,
                color: Color(0xff200015),
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
              )),
            ),
          ),
          SizedBox(
            height: data.height / 60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "When do you want us to remind you about",
              style: GoogleFonts.lato(
                  textStyle: TextStyle(
                fontSize: 16,
                color: Color(0xff200015),
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "your laundry?",
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
            height: data.height / 48,
          ),
          CheckBoxRow(text: "Every Sunday"),
          SizedBox(
            height: data.height / 1500,
          ),
          CheckBoxRow(text: "Every Monday"),
          SizedBox(
            height: data.height / 1500,
          ),
          CheckBoxRow(text: "Every Tuesday"),
          SizedBox(
            height: data.height / 1500,
          ),
          CheckBoxRow(text: "Every Wednesday"),
          SizedBox(
            height: data.height / 1500,
          ),
          CheckBoxRow(text: "Every Thursday"),
          SizedBox(
            height: data.height / 1500,
          ),
          CheckBoxRow(text: "Every Friday"),
          SizedBox(
            height: data.height / 1500,
          ),
          CheckBoxRow(text: "Every Saturday"),
          SizedBox(
            height: data.height / 1500,
          ),
          CheckBoxRow(text: "Never, thanks!"),
          SizedBox(
            height: data.height / 30,
          ),
          GestureDetector(
            onTap: _showDialog,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffFF3471),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                height: 56,
                width: data.width * .91,
                child: Center(
                  child: Text(
                    "Done",
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
        ],
      )),
    );
  }
}

class CheckBoxRow extends StatefulWidget {
  final String text;

  CheckBoxRow({@required this.text});

  @override
  _CheckBoxRowState createState() => _CheckBoxRowState();
}

class _CheckBoxRowState extends State<CheckBoxRow> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    var data = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 7.0),
          child: Checkbox(
              value: isCheck,
              checkColor: Color(0xffEEEEEE), // color of tick Mark
              activeColor: Color(0xffFF3471),
              onChanged: (bool value) {
                setState(() {
                  isCheck = value;
                });
              }),
        ),
        Text(
          widget.text,
          style: GoogleFonts.lato(
              textStyle: TextStyle(
            fontSize: 14,
            color: Color(0xff000000),
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
          )),
        ),
      ],
    );
  }
}
