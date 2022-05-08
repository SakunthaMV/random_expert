import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:random_expert/HomePage.dart';
import 'package:shimmer/shimmer.dart';

class OpenSplash extends StatefulWidget {
  const OpenSplash({Key? key}) : super(key: key);

  @override
  State<OpenSplash> createState() => _OpenSplashState();
}

class _OpenSplashState extends State<OpenSplash> {

  @override
  void initState() {
    Timer(Duration(milliseconds: 1000), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) {
            return HomePage();
          },
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 255, 227),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Shimmer.fromColors(
              baseColor: Color.fromARGB(255, 58, 87, 67),
              highlightColor: Colors.yellow,
              child: Container(
                height: 150,
                width: width*0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    border: Border.all(color: Color.fromARGB(255, 58, 87, 67), width: 2,)
                ),
              ),
            ),
            Container(
              height: 150,
              width: width*0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                // border: Border.all(color: Color.fromARGB(255, 58, 87, 67), width: 2)
              ),
              child: Center(
                child: Shimmer.fromColors(
                  baseColor: Color.fromARGB(255, 58, 87, 67),
                  highlightColor: Colors.yellow,
                  child: Text(
                    'RANDOM\nEXPERT',
                    style: GoogleFonts.openSans(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 4,
                      color: Color.fromARGB(255, 58, 87, 67),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
