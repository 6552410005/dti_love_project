// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import, prefer_const_literals_to_create_immutables

import 'package:dti_love_project/views/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionUI extends StatefulWidget {
  const IntroductionUI({super.key});

  @override
  State<IntroductionUI> createState() => _IntroductionUIState();
}

class _IntroductionUIState extends State<IntroductionUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.purple[100],
      body: IntroductionScreen(
        autoScrollDuration: 2000,
        infiniteAutoScroll: true,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Text(
              'CAR 001',
              style: GoogleFonts.kanit(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            image: Image.asset('assets/images/car1.jpg'),
            bodyWidget: Text(
              'Test',
              style: GoogleFonts.kanit(),
              textAlign: TextAlign.center,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'CAR 002',
              style: GoogleFonts.kanit(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            image: Image.asset('assets/images/car2.jpg'),
            bodyWidget: Text(
              'Test',
              style: GoogleFonts.kanit(),
              textAlign: TextAlign.center,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'CAR 003',
              style: GoogleFonts.kanit(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            image: Image.asset('assets/images/car3.jpg'),
            bodyWidget: Text(
              'Test',
              style: GoogleFonts.kanit(),
              textAlign: TextAlign.center,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'CAR 004',
              style: GoogleFonts.kanit(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            image: Image.asset('assets/images/car4.jpg'),
            bodyWidget: Text(
              'Test',
              style: GoogleFonts.kanit(),
              textAlign: TextAlign.center,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              'CAR 005',
              style: GoogleFonts.kanit(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            image: Image.asset('assets/images/car5.jpg'),
            bodyWidget: Text(
              'Test',
              style: GoogleFonts.kanit(),
              textAlign: TextAlign.center,
            ),
          ),
        ],
        showSkipButton: true,
        skip: Text(
          'ข้าม',
          style: GoogleFonts.kanit(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
        onSkip: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size(
            MediaQuery.of(context).size.width * 0.025,
            MediaQuery.of(context).size.height * 0.025,
          ),
          color: Colors.grey,
          activeSize: Size(
            MediaQuery.of(context).size.width * 0.055,
            MediaQuery.of(context).size.height * 0.025,
          ),
          activeColor: Colors.purple,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(25.0),
            ),
          ),
        ),
        next: Icon(
          Icons.arrow_forward,
        ),
        nextFlex: 0,
        done: Text(
          'เริ่มต้น',
          style: GoogleFonts.kanit(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),
        ),
        onDone: () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeUI(),
          ),
        ),
      ),
    );
  }
}
