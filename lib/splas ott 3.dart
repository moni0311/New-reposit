import 'package:flutter/material.dart';
import 'package:untitled1/colors.dart';
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color,c],
          ),
        ),

        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
              image: AssetImage("goals/splash.gif"),
                  // fit: BoxFit.fill
            )
          ),
        ),
      ),

    );
  }
}
