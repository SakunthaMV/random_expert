import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

import 'package:simple_shadow/simple_shadow.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String type = 'INTEGER';
  String buttonType = 'Decimal';
  bool integer = true;
  Color firstDotColor = Colors.white;
  Color secondDotColor = Color.fromARGB(255, 108, 143, 117);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 255, 227),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.35),
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      height: height * 0.55,
                      width: 7,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 212, 226, 190),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: height * 0.28),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              children: [
                                Transform.rotate(
                                  angle: math.pi / 4,
                                  child: Container(
                                    height: height * 0.035,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 171, 211, 148),
                                      borderRadius: BorderRadius.circular(1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 0),
                                          blurRadius: 0.8,
                                          spreadRadius: 0.8,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Transform.rotate(
                                  angle: -math.pi / 4,
                                  child: Container(
                                    height: height * 0.035,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 171, 211, 148),
                                      borderRadius: BorderRadius.circular(1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 0),
                                          blurRadius: 0.8,
                                          spreadRadius: 0.8,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Stack(
                              children: [
                                Transform.rotate(
                                  angle: math.pi / 4,
                                  child: Container(
                                    height: height * 0.035,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 171, 211, 148),
                                      borderRadius: BorderRadius.circular(1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 0),
                                          blurRadius: 0.8,
                                          spreadRadius: 0.8,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Transform.rotate(
                                  angle: -math.pi / 4,
                                  child: Container(
                                    height: height * 0.035,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 171, 211, 148),
                                      borderRadius: BorderRadius.circular(1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 0),
                                          blurRadius: 0.8,
                                          spreadRadius: 0.8,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.25),
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      height: height * 0.55,
                      width: 7,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 212, 226, 190),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 0),
                        child: SizedBox(
                          height: 14,
                          child: SimpleShadow(
                            child: Image.asset('assets/Infinity_Icon.png'),
                            opacity: 0.7,
                            color: Colors.black.withOpacity(0.2),
                            offset: Offset(0,0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.15),
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      height: height * 0.55,
                      width: 7,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 212, 226, 190),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: height * 0.4),
                        child: Stack(
                          children: [
                            Transform.rotate(
                              angle: math.pi / 4,
                              child: Container(
                                height: height * 0.035,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 171, 211, 148),
                                  borderRadius: BorderRadius.circular(1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: Offset(0, 0),
                                      blurRadius: 0.8,
                                      spreadRadius: 0.8,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Transform.rotate(
                              angle: -math.pi / 4,
                              child: Container(
                                height: height * 0.035,
                                width: 5,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 171, 211, 148),
                                  borderRadius: BorderRadius.circular(1),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      offset: Offset(0, 0),
                                      blurRadius: 0.8,
                                      spreadRadius: 0.8,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.4),
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Container(
                      height: height * 0.55,
                      width: 7,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 212, 226, 190),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: height * 0.33),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Stack(
                              children: [
                                Transform.rotate(
                                  angle: math.pi / 4,
                                  child: Container(
                                    height: height * 0.035,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 171, 211, 148),
                                      borderRadius: BorderRadius.circular(1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 0),
                                          blurRadius: 0.8,
                                          spreadRadius: 0.8,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Transform.rotate(
                                  angle: -math.pi / 4,
                                  child: Container(
                                    height: height * 0.035,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 171, 211, 148),
                                      borderRadius: BorderRadius.circular(1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 0),
                                          blurRadius: 0.8,
                                          spreadRadius: 0.8,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Stack(
                              children: [
                                Transform.rotate(
                                  angle: math.pi / 4,
                                  child: Container(
                                    height: height * 0.035,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 171, 211, 148),
                                      borderRadius: BorderRadius.circular(1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 0),
                                          blurRadius: 0.8,
                                          spreadRadius: 0.8,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Transform.rotate(
                                  angle: -math.pi / 4,
                                  child: Container(
                                    height: height * 0.035,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 171, 211, 148),
                                      borderRadius: BorderRadius.circular(1),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          offset: Offset(0, 0),
                                          blurRadius: 0.8,
                                          spreadRadius: 0.8,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 14,
                              child: SimpleShadow(
                                child: Image.asset('assets/Infinity_Icon.png'),
                                opacity: 0.7,
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(0,0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: height * 0.32,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 59, 112, 128),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(45),
                bottomRight: Radius.circular(45),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.35),
                    offset: Offset(0, 0),
                    blurRadius: 7.0,
                    spreadRadius: 3.0),
              ],
              border: Border.all(
                color: Color.fromARGB(255, 112, 112, 112),
              ),
            ),
          ),
          Container(
            height: height * 0.1,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.43),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(23),
                bottomRight: Radius.circular(23),
              ),
              border: Border.all(
                color: Color.fromARGB(255, 112, 112, 112),
              ),
            ),
            child: SafeArea(
              child: Center(
                child: Text(
                  'Random Expert',
                  style: GoogleFonts.openSans(
                    fontSize: 23,
                    color: Color.fromARGB(255, 58, 87, 67),
                    letterSpacing: 1.2,
                    shadows: [
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 9.0,
                        color: Color.fromARGB(255, 112, 112, 112).withOpacity(0.7),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.13),
              child: SizedBox(
                height: 50,
                width: 180,
                child: ElevatedButton(
                  onPressed: () {
                    integer = !integer;
                    if (integer) {
                      setState(() {
                        type = 'INTEGER';
                        buttonType = 'Decimal';
                        firstDotColor = Colors.white;
                        secondDotColor = Color.fromARGB(255, 108, 143, 117);
                      });
                    } else {
                      setState(() {
                        type = 'DECIMAL';
                        buttonType = 'Integer';
                        firstDotColor = Color.fromARGB(255, 108, 143, 117);
                        secondDotColor = Colors.white;
                      });
                    }
                  },
                  child: Text(
                    buttonType,
                    style: GoogleFonts.roboto(
                      fontSize: 26,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 3,
                    primary: Color.fromARGB(255, 108, 143, 117),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.21, left: width * 0.2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    type,
                    style: GoogleFonts.openSans(
                        fontSize: 36,
                        color: Color.fromARGB(255, 190, 241, 136),
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.2),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: firstDotColor, borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: secondDotColor, borderRadius: BorderRadius.circular(5)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
