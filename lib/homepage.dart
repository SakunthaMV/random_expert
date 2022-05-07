import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

import 'package:simple_shadow/simple_shadow.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final dataFormKey = GlobalKey<FormState>();

  List<int> _numberList = [];
  List<double> _decimalList = [];

  int _randomNumberInteger = 0;
  int _minValueInteger = 0;
  int _maxValueInteger = 100;
  int _items = 1;
  int _decimals = 1;

  String _type = 'INTEGER';
  String _buttonType = 'Decimal';

  Color _firstDotColor = Colors.white;
  Color _secondDotColor = Color.fromARGB(255, 108, 143, 117);

  bool _repetitionChecked = true;
  bool _sumChecked = false;
  bool _integer = true;

  double _heightScale = 0.2;
  double _randomNumberDecimal = 0.00;
  double _minValueDecimal = 0.00;
  double _maxValueDecimal = 100.00;

  TextEditingController _minValueController = TextEditingController(text: '0');
  TextEditingController _maxValueController = TextEditingController(text: '100');
  TextEditingController _itemsController = TextEditingController(text: '1');
  TextEditingController _decimalController = TextEditingController(text: '1');

  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    super.initState();
  }

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
                            padding: EdgeInsets.only(top: height * 0.43),
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
                    padding: EdgeInsets.only(top: height * 0.17),
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
                            padding: EdgeInsets.only(top: height * 0.3),
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
                    padding: EdgeInsets.only(top: 0),
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
                            padding: EdgeInsets.only(top: height * 0.15),
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
                            padding: EdgeInsets.only(top: height * 0.43),
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
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              padding: EdgeInsets.only(
                top: height * _heightScale,
                left: width * 0.05,
                right: width * 0.05,
              ),
              child: Form(
                key: dataFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: ScaleTransition(
                        alignment: Alignment.bottomCenter,
                        scale: _animation,
                        child: Container(
                          width: width * 0.55,
                          height: height * 0.17,
                          margin: EdgeInsets.only(left: width * 0.05, bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(35),
                              bottomLeft: Radius.circular(35),
                              bottomRight: Radius.circular(35),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 5,
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(13),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(
                                    '${_integer? _randomNumberInteger : _randomNumberDecimal}',
                                    style: GoogleFonts.droidSerif(
                                      fontSize: 85,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black.withOpacity(0.4),
                                          blurRadius: 3,
                                          offset: Offset(1, 1),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: IconButton(
                                  iconSize: 20,
                                  onPressed: () {
                                    Clipboard.setData(
                                      ClipboardData(text: '$_randomNumberInteger'),
                                    );
                                    Fluttertoast.showToast(msg: 'Copied to Clipboard');
                                  },
                                  icon: Icon(
                                    Icons.copy_outlined,
                                  ),
                                  color: Color.fromARGB(255, 243, 231, 113),
                                  splashRadius: 15,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    _integer
                        ? Container()
                        : Container(
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
                                    'NUMBER OF DECIMAL POINTS',
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
                                    textInputAction: TextInputAction.next,
                                    controller: _decimalController,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(1),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    onTap: () {
                                      setState(() {
                                        _decimalController.text = '';
                                      });
                                    },
                                    onChanged: (text) {
                                      if (text.isNotEmpty) {
                                        setState(() {
                                          _decimals = int.parse(text);
                                        });
                                      }
                                    },
                                    onFieldSubmitted: (text) {
                                      if (text.isEmpty) {
                                        setState(() {
                                          _decimalController.text = '1';
                                          _decimals = 1;
                                        });
                                      }
                                    },
                                    validator: (text) {
                                      if (text == null || text.isEmpty) {
                                        setState(() {
                                          _decimalController.text = '1';
                                          _decimals = 1;
                                        });
                                      } else if (text == '0') {
                                        setState(() {
                                          _decimalController.text = '1';
                                          _decimals = 1;
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
                              inputFormatters: _integer
                                  ? [
                                      LengthLimitingTextInputFormatter(8),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ]
                                  : [
                                      LengthLimitingTextInputFormatter(9),
                                    ],
                              onTap: () {
                                setState(() {
                                  _minValueController.text = '';
                                });
                              },
                              onChanged: (text) {
                                if (text.isNotEmpty) {
                                  setState(() {
                                    if (_integer) {
                                      _minValueInteger = int.parse(text);
                                    } else {
                                      _minValueDecimal = double.parse(text);
                                    }
                                  });
                                }
                              },
                              onFieldSubmitted: (text) {
                                setState(() {
                                  _maxValueController.text = '';
                                });
                                if (text.isEmpty) {
                                  setState(() {
                                    if (_integer) {
                                      _minValueController.text = '0';
                                      _minValueInteger = 0;
                                    } else {
                                      _minValueController.text = '0.00';
                                      _minValueDecimal = 0.00;
                                    }
                                  });
                                }
                              },
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  setState(() {
                                    if (_integer) {
                                      _minValueController.text = '0';
                                      _minValueInteger = 0;
                                    } else {
                                      _minValueController.text = '0.00';
                                      _minValueDecimal = 0.00;
                                    }
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
                              inputFormatters: _integer
                                  ? [
                                      LengthLimitingTextInputFormatter(8),
                                      FilteringTextInputFormatter.digitsOnly,
                                    ]
                                  : [
                                      LengthLimitingTextInputFormatter(9),
                                    ],
                              onTap: () {
                                setState(() {
                                  _maxValueController.text = '';
                                });
                              },
                              onChanged: (text) {
                                if (text.isNotEmpty) {
                                  setState(() {
                                    if (_integer) {
                                      _maxValueInteger = int.parse(text);
                                    } else {
                                      _maxValueDecimal = double.parse(text);
                                    }
                                  });
                                }
                              },
                              onFieldSubmitted: (text) {
                                _itemsController.text = '';
                                if (text.isEmpty) {
                                  setState(() {
                                    if (_integer) {
                                      _maxValueController.text = '100';
                                      _maxValueInteger = 100;
                                    } else {
                                      _maxValueController.text = '100.00';
                                      _maxValueDecimal = 100.00;
                                    }
                                  });
                                }
                              },
                              validator: (text) {
                                if (text == null || text.isEmpty) {
                                  setState(() {
                                    if (_integer) {
                                      _maxValueController.text = '100';
                                      _maxValueInteger = 100;
                                    } else {
                                      _maxValueController.text = '100.00';
                                      _maxValueDecimal = 100.00;
                                    }
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
                                if (text == null || text.isEmpty) {
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
            height: height * 0.3,
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
              padding: EdgeInsets.only(top: height * 0.12),
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
                        _minValueController.text = '0';
                        _maxValueController.text = '100';
                      });
                    } else {
                      setState(() {
                        _type = 'DECIMAL';
                        _buttonType = 'Integer';
                        _firstDotColor = Color.fromARGB(255, 108, 143, 117);
                        _secondDotColor = Colors.white;
                        _minValueController.text = '0.00';
                        _maxValueController.text = '100.00';
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
              padding: EdgeInsets.only(top: height * 0.195, left: width * 0.2),
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
                          color: _firstDotColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          color: _secondDotColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
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
              margin: EdgeInsets.only(top: height * 0.3 - 40, right: 40),
              child: ElevatedButton(
                onPressed: () {
                  final isValid = dataFormKey.currentState!.validate();
                  if (isValid) {
                    int sum = 0;
                    double decimalSum = 0.0;
                    var random = Random();
                    if (_integer) {
                      if (_numberList.isNotEmpty) {
                        _numberList.clear();
                      }
                      if (_maxValueInteger > _minValueInteger) {
                        if (_repetitionChecked) {
                          for (int i = 0; i < _items; i++) {
                            int randomNumber =
                                random.nextInt(_maxValueInteger - _minValueInteger) +
                                    _minValueInteger;
                            _numberList.add(randomNumber);
                          }
                          print('1');
                        } else {
                          if (_maxValueInteger - _minValueInteger >= _items) {
                            while (_numberList.length < _items) {
                              int randomNumber =
                                  random.nextInt(_maxValueInteger - _minValueInteger) +
                                      _minValueInteger;
                              if (_numberList.contains(randomNumber)) {
                                continue;
                              } else {
                                _numberList.add(randomNumber);
                              }
                            }
                            print('2');
                          } else {
                            Fluttertoast.showToast(
                              msg: 'Number range is insufficient.',
                              timeInSecForIosWeb: 1,
                            );
                          }
                        }
                        if (_sumChecked) {
                          if (_items > 1) {
                            if (_numberList.isNotEmpty) {
                              _numberList.forEach((element) => sum += element);
                              print(_numberList);
                              print(sum);
                              print('more numbers');
                              print('sum');
                            }
                          } else {
                            Fluttertoast.showToast(
                              msg: 'Sum is equal to random number',
                              timeInSecForIosWeb: 1,
                            );
                            if (_numberList.isNotEmpty) {
                              setState(() {
                                _randomNumberInteger = _numberList[0];
                                _heightScale = 0.33;
                              });
                              _animationController.forward();
                            }
                          }
                        } else {
                          if (_items > 1) {
                            if (_numberList.isNotEmpty) {
                              print(_numberList);
                              print('more numbers');
                              print('not sum');
                            }
                          } else {
                            if (_numberList.isNotEmpty) {
                              setState(() {
                                _randomNumberInteger = _numberList[0];
                                _heightScale = 0.33;
                              });
                              _animationController.forward();
                            }
                          }
                        }
                      } else {
                        if (_minValueInteger == _maxValueInteger) {
                          Fluttertoast.showToast(
                            msg: 'MIN VALUE is equal to MAX VALUE',
                            timeInSecForIosWeb: 1,
                          );
                        } else {
                          Fluttertoast.showToast(
                            msg: 'MIN VALUE is larger than MAX VALUE',
                            timeInSecForIosWeb: 1,
                          );
                        }
                      }
                    } else {
                      if (_decimalList.isNotEmpty) {
                        _decimalList.clear();
                      }
                      if (_maxValueDecimal > _minValueDecimal) {
                        if (_repetitionChecked) {
                          for (int i = 0; i < _items; i++) {
                            double randomNumber =
                                random.nextDouble() * (_maxValueDecimal - _minValueDecimal) +
                                    _minValueDecimal;
                            _decimalList.add(double.parse(randomNumber.toStringAsFixed(_decimals)));
                          }
                        } else {
                          if ((_maxValueDecimal - _minValueDecimal)*pow(10,_decimals) >= _items) {
                            while (_decimalList.length < _items) {
                              double randomNumber =
                                  random.nextDouble() * (_maxValueDecimal - _minValueDecimal) +
                                      _minValueDecimal;
                              if (_decimalList.contains(randomNumber)) {
                                continue;
                              } else {
                                _decimalList.add(randomNumber);
                              }
                            }
                          } else {
                            Fluttertoast.showToast(
                              msg: 'Number range is insufficient.',
                              timeInSecForIosWeb: 1,
                            );
                          }
                        }
                        if (_sumChecked) {
                          if (_items > 1) {
                            if (_decimalList.isNotEmpty) {
                              _decimalList.forEach((element) => decimalSum += element);
                              print(_decimalList);
                              print(decimalSum);
                              print('more decimal numbers');
                              print('Decimal Sum');
                            }
                          } else {
                            Fluttertoast.showToast(
                              msg: 'Sum is equal to random number',
                              timeInSecForIosWeb: 1,
                            );
                            if (_decimalList.isNotEmpty) {
                              setState(() {
                                _randomNumberDecimal = _decimalList[0];
                                _heightScale = 0.33;
                              });
                              _animationController.forward();
                            }
                          }
                        } else {
                          if (_items > 1) {
                            if (_decimalList.isNotEmpty) {
                              print(_decimalList);
                              print('more decimal numbers');
                              print('not decimal sum');
                            }
                          } else {
                            if (_decimalList.isNotEmpty) {
                              setState(() {
                                _randomNumberDecimal = _decimalList[0];
                                _heightScale = 0.33;
                              });
                              _animationController.forward();
                            }
                          }
                        }
                      } else {
                        if (_minValueInteger == _maxValueInteger) {
                          Fluttertoast.showToast(
                            msg: 'MIN VALUE is equal to MAX VALUE',
                            timeInSecForIosWeb: 1,
                          );
                        } else {
                          Fluttertoast.showToast(
                            msg: 'MIN VALUE is larger than MAX VALUE',
                            timeInSecForIosWeb: 1,
                          );
                        }
                      }
                    }
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
