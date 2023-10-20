import 'package:flutter/material.dart';
import 'package:untitled1/New%20&%20hot%20OTT2.1.dart';
import 'package:untitled1/Register.Ot.1dart';
import 'package:untitled1/Search%20ott1.1.dart';
import 'package:untitled1/Tryyy.dart';
import 'package:untitled1/desc%20OTT%205.dart';
import 'package:untitled1/home OTT4.dart';
import 'package:untitled1/max.dart';
import 'package:untitled1/splas%20ott%203.dart';


import 'New stateful.dart';






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
      title: 'Flutter Demo',
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Newhot(),
    );
  }
}
