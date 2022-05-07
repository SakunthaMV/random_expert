import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:random_expert/HomePage.dart';
import 'dart:math' as math;
import 'package:simple_shadow/simple_shadow.dart';

class ResultPage extends StatefulWidget {
  final String type;
  final List numberList;
  final double sum;

  const ResultPage(this.type, this.numberList, {Key? key, this.sum = 0.0}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String? selectedValue;
  List? _sortedList = [];

  @override
  void initState() {
    _sortedList = [...widget.numberList];
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
          ListView.builder(
            itemCount:
                widget.sum > 0.0 ? widget.numberList.length + 1 : widget.numberList.length,
            padding:
                EdgeInsets.only(top: height * 0.33, left: width * 0.1, right: width * 0.1),
            itemBuilder: (context, index) {
              if (widget.sum > 0.0) {
                if (index == 0) {
                  return Column(
                    children: [
                      Container(
                        height: 75,
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 4,
                              spreadRadius: 1.5,
                            )
                          ],
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, left: 30, right: 40),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: RichText(
                                  text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 50,
                                        color: Colors.black,
                                        shadows: [
                                          Shadow(
                                            color: Colors.black.withOpacity(0.4),
                                            blurRadius: 3,
                                            offset: Offset(1, 1),
                                          ),
                                        ],
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'SUM = ',
                                          style: GoogleFonts.droidSerif(),
                                        ),
                                        TextSpan(
                                          text:
                                              '${widget.type == 'INTEGER' ? widget.sum.toStringAsFixed(0) : widget.sum}',
                                          style: GoogleFonts.oldStandardTt(),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                iconSize: 20,
                                onPressed: () {
                                  Clipboard.setData(
                                    ClipboardData(
                                      text: widget.type == 'INTEGER'
                                          ? widget.sum.toStringAsFixed(0)
                                          : widget.sum.toString(),
                                    ),
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
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                        indent: 18,
                        endIndent: 18,
                      ),
                    ],
                  );
                }
              }
              return Container(
                height: 75,
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 4,
                      spreadRadius: 1.5,
                    )
                  ],
                ),
                child: Stack(
                  alignment: AlignmentDirectional.centerStart,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 40),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '${widget.sum > 0.0 ? _sortedList![index - 1] : _sortedList![index]}',
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
                            ClipboardData(
                                text: widget.sum > 0.0
                                    ? _sortedList![index - 1].toString()
                                    : _sortedList![index].toString()),
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
              );
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: height * 0.03, right: width * 0.05),
              child: SizedBox(
                width: 150,
                height: 35,
                child: ElevatedButton(
                  onPressed: () {
                    String? numbers = _sortedList?.join(', ');
                    Clipboard.setData(
                      ClipboardData(
                        text: numbers,
                      ),
                    );
                    Fluttertoast.showToast(msg: 'Copied to Clipboard');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.copy_outlined,
                        size: 17,
                        color: Colors.black,
                      ),
                      Text(
                        'COPY ALL',
                        style: GoogleFonts.openSans(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 243, 231, 113),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    elevation: 3,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: height * 0.25,
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
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.13),
              child: Text(
                widget.type,
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
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 80,
              width: 80,
              margin: EdgeInsets.only(top: height * 0.25 - 40, right: 40),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageTransition(child: HomePage(), type: PageTransitionType.rightToLeft),
                  );
                },
                child: Icon(
                  Icons.cached,
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
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: height * 0.25 + 10, left: width * 0.1),
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  hint: Text(
                    'SORT BY',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      letterSpacing: 3,
                      color: Colors.black,
                    ),
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text(
                        'Original View',
                        style: GoogleFonts.roboto(
                          fontSize: 14, color: Colors.black, letterSpacing: 1.2,),
                      ),
                      value: 'Original View',
                    ),
                    DropdownMenuItem(
                      child: Text(
                        'Ascending',
                        style: GoogleFonts.roboto(
                            fontSize: 14, color: Colors.black, letterSpacing: 1.2,),
                      ),
                      value: 'Ascending',
                    ),
                    DropdownMenuItem(
                      child: Text(
                        'Descending',
                        style: GoogleFonts.roboto(
                            fontSize: 14, color: Colors.black, letterSpacing: 1.2,),
                      ),
                      value: 'Descending',
                    ),
                  ],
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                    if(selectedValue=='Ascending'){
                      _sortedList?.sort();
                    } else if (selectedValue=='Descending') {
                      _sortedList = (_sortedList?..sort())?.reversed.toList();
                    } else if (selectedValue=='Original View') {
                      _sortedList = [...widget.numberList];
                    }
                    print(_sortedList);
                    print(widget.numberList);
                  },
                  buttonHeight: 30,
                  buttonWidth: 150,
                  itemHeight: 30,
                  buttonDecoration: BoxDecoration(
                    color: Color.fromARGB(255, 254, 242, 242),
                    borderRadius: BorderRadius.circular(7),
                  ),
                  buttonPadding: const EdgeInsets.only(left: 14, right: 8),
                  buttonElevation: 2,
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color.fromARGB(255, 238, 255, 227),
                  ),
                  offset: Offset(0, -5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
