import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

import 'package:simple_shadow/simple_shadow.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dataFormKey = GlobalKey<FormState>();

  String _type = 'INTEGER';
  String _buttonType = 'Decimal';
  bool _integer = true;
  Color _firstDotColor = Colors.white;
  Color _secondDotColor = Color.fromARGB(255, 108, 143, 117);
  int _minValueInteger = 0;
  int _maxValueInteger = 100;
  int _items = 1;
  bool _repetitionChecked = true;
  bool _sumChecked = false;

  TextEditingController _minValueController = TextEditingController(text: '0');
  TextEditingController _maxValueController = TextEditingController(text: '100');
  TextEditingController _itemsController = TextEditingController(text: '1');
  TextEditingController _decimalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 255, 227),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          ListView(
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
                                offset: Offset(0, 0),
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
                                    offset: Offset(0, 0),
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
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: height * 0.4,
                left: width * 0.05,
                right: width * 0.05,
              ),
              child: Form(
                key: dataFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.only(left: 20, right: 15),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 250, 153),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.35),
                            blurRadius: 4,
                            spreadRadius: -1,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'MIN VALUE',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.black,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 4.0,
                                  offset: Offset(0.5, 1),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 30,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              textInputAction: TextInputAction.next,
                              controller: _minValueController,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(8),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              onTap: () {
                                setState(() {
                                  _minValueController.text = '';
                                });
                              },
                              onChanged: (text) {
                                setState(() {
                                  _minValueInteger = int.parse(text);
                                });
                              },
                              onFieldSubmitted: (text) {
                                setState(() {
                                  _maxValueController.text = '';
                                });
                                if (text.isEmpty) {
                                  setState(() {
                                    _minValueController.text = '0';
                                    _minValueInteger = 0;
                                  });
                                }
                              },
                              validator: (text) {
                                if (text == null || text.isEmpty){
                                  setState(() {
                                    _minValueController.text = '0';
                                    _minValueInteger = 0;
                                  });
                                }
                                return null;
                              },
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(bottom: 15)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.only(left: 20, right: 15),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 250, 153),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.35),
                            blurRadius: 4,
                            spreadRadius: -1,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'MAX VALUE',
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.black,
                              shadows: [
                                Shadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 4.0,
                                  offset: Offset(0.5, 1),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 30,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              textInputAction: TextInputAction.next,
                              controller: _maxValueController,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(8),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              onTap: () {
                                setState(() {
                                  _maxValueController.text = '';
                                });
                              },
                              onChanged: (text) {
                                setState(() {
                                  _maxValueInteger = int.parse(text);
                                });
                              },
                              onFieldSubmitted: (text) {
                                _itemsController.text = '';
                                if (text.isEmpty) {
                                  setState(() {
                                    _maxValueController.text = '100';
                                    _maxValueInteger = 100;
                                  });
                                }
                              },
                              validator: (text) {
                                if (text == null || text.isEmpty){
                                  setState(() {
                                    _maxValueController.text = '100';
                                    _maxValueInteger = 100;
                                  });
                                }
                                return null;
                              },
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(bottom: 15)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.only(left: 20, right: 15),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 250, 153),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.35),
                            blurRadius: 4,
                            spreadRadius: -1,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.5,
                            child: Text(
                              'NUMBER OF RANDOM ITEMS',
                              style: GoogleFonts.openSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Colors.black,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withOpacity(0.4),
                                    blurRadius: 4.0,
                                    offset: Offset(0.5, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              textInputAction: TextInputAction.done,
                              controller: _itemsController,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(3),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              onTap: () {
                                setState(() {
                                  _itemsController.text = '';
                                });
                              },
                              onChanged: (text) {
                                setState(() {
                                  _items = int.parse(text);
                                });
                              },
                              onFieldSubmitted: (text) {
                                if (text.isEmpty) {
                                  setState(() {
                                    _itemsController.text = '1';
                                    _items = 1;
                                  });
                                }
                              },
                              validator: (text) {
                                if (text == null || text.isEmpty){
                                  setState(() {
                                    _itemsController.text = '1';
                                    _items = 1;
                                  });
                                } else if (text == '0') {
                                  setState(() {
                                    _itemsController.text = '1';
                                    _items = 1;
                                  });
                                }
                                return null;
                              },
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w300,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(bottom: 15),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.only(left: 20, right: 15),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 250, 153),
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.35),
                            blurRadius: 4,
                            spreadRadius: -1,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'REPETITION',
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.black,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black.withOpacity(0.4),
                                      blurRadius: 4.0,
                                      offset: Offset(0.5, 1),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30,
                                width: width * 0.3,
                                child: Transform.scale(
                                  scale: 1.4,
                                  child: Checkbox(
                                    value: _repetitionChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        _repetitionChecked = value!;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    activeColor: Colors.white,
                                    checkColor: Colors.black,
                                    side: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'SHOW SUM',
                                style: GoogleFonts.openSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.black,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black.withOpacity(0.4),
                                      blurRadius: 4.0,
                                      offset: Offset(0.5, 1),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30,
                                width: width * 0.3,
                                child: Transform.scale(
                                  scale: 1.4,
                                  child: Checkbox(
                                    value: _sumChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        _sumChecked = value!;
                                      });
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    activeColor: Colors.white,
                                    checkColor: Colors.black,
                                    side: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                    _integer = !_integer;
                    if (_integer) {
                      setState(() {
                        _type = 'INTEGER';
                        _buttonType = 'Decimal';
                        _firstDotColor = Colors.white;
                        _secondDotColor = Color.fromARGB(255, 108, 143, 117);
                      });
                    } else {
                      setState(() {
                        _type = 'DECIMAL';
                        _buttonType = 'Integer';
                        _firstDotColor = Color.fromARGB(255, 108, 143, 117);
                        _secondDotColor = Colors.white;
                      });
                    }
                  },
                  child: Text(
                    _buttonType,
                    style: GoogleFonts.roboto(
                      fontSize: 26,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 7.0,
                          offset: Offset(1, 2),
                        )
                      ],
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
                    _type,
                    style: GoogleFonts.openSans(
                      fontSize: 36,
                      color: Color.fromARGB(255, 190, 241, 136),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.2,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 5.0,
                          offset: Offset(1, 2),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: _firstDotColor, borderRadius: BorderRadius.circular(5)),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: _secondDotColor, borderRadius: BorderRadius.circular(5)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 80,
              width: 80,
              margin: EdgeInsets.only(top: height * 0.32 - 40, right: 40),
              child: ElevatedButton(
                onPressed: () {
                  final isValid = dataFormKey.currentState!.validate();
                  if (isValid) {
                    print(_minValueInteger);
                    print(_maxValueInteger);
                    print(_items);
                    print(_repetitionChecked);
                  }
                },
                child: Icon(
                  Icons.play_arrow,
                  size: 45,
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  elevation: 3,
                  primary: Color.fromARGB(255, 252, 236, 82),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
