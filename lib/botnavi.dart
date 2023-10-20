import 'package:flutter/material.dart';
import 'package:untitled1/Amazon.dart';
import 'package:untitled1/Instagram.dart';

import 'package:untitled1/New%20stateful.dart';
import 'package:untitled1/Spotify.dart';

import 'package:untitled1/product.dart';



class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}

class _BotnaviState extends State<Botnavi> {

  int _index = 0 ;


  final pages = [


    AMs(),
    Spotify(),
    insta(),
    PD(),


  ];


  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: ColoredBox(
        color: Colors.blue,
        child: BottomNavigationBar(
          backgroundColor: Colors.black,
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.my_library_music,color: Colors.black,),label: 'musiq'),
            BottomNavigationBarItem(icon: Icon(Icons.medical_services_sharp,color: Colors.black,),label:'socialmedia' ),

            BottomNavigationBarItem(icon: Icon(Icons.settings,color: Colors.black,),label: 'profile'),

          ],
          currentIndex: _index,
          onTap: tap,
        ),
      ),
    );
  }
}


