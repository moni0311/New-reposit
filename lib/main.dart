import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:untitled1/CRM/Reg%20CRM.dart';
import 'package:untitled1/CRM/login%20CRM.dart';
import 'package:untitled1/CRM/profile%20CRM.dart';
import 'package:untitled1/DDArt.dart';
import 'package:untitled1/Instagram.dart';
import 'package:untitled1/Min,Max.dart';
import 'package:untitled1/Roman.dart';
import 'package:untitled1/Singup.dart';
import 'package:untitled1/Spotify.dart';
import 'package:untitled1/desc%20OTT%205.dart';
import 'package:untitled1/download%20ott.dart';
import 'package:untitled1/langu.dart';
import 'package:untitled1/LocalString.dart';
import 'package:untitled1/Search%20ott1.1.dart';
import 'package:untitled1/home%20OTT4.dart';
import 'package:untitled1/langu.dart';
import 'package:untitled1/log%20Ot2.dart';
import 'package:untitled1/my%20space.dart';
import 'package:untitled1/new.dart';
import 'package:untitled1/product.dart';
import 'package:untitled1/select.dart';
import 'package:untitled1/splas%20ott%203.dart';
import 'package:untitled1/validation.dart';

import 'Amazon.dart';
import 'CRM/hom CRM.dart';
import 'Calculator.dart';
import 'Textcontroller.dart';
import 'ctrl.Container.dart';
import 'ctrl2.Container.dart';
import 'max.dart';






void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child)=>ResponsiveBreakpoints.builder(child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 450, name: MOBILE),

          ]),initialRoute: "/",
      title: 'Flutter Demo',
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AMs(),
    );
  }
}
