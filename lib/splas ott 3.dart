import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled1/Model.dart';
import 'package:untitled1/Singup.dart';
import 'package:untitled1/home%20OTT4.dart';
import 'package:untitled1/langu.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    // Add a delay to simulate the splash screen effect
    Timer(Duration(seconds: 4), () {
      navigateToNextScreen();
    });
  }

  void navigateToNextScreen() {
    // Navigator.pushReplacement is used to replace the splash screen with the next screen
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => reg()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.black],
          ),
        ),
        child: GestureDetector(
          onTap: navigateToNextScreen,
          child: Center(
            child: Container(
              height: 700,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage("goals/ggg.gif"),
                  fit: BoxFit.cover, // Use BoxFit.cover to cover the whole container
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}