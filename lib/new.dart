import 'package:flutter/material.dart';
class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  int(String a){
    if (a == 'I')
      return 1;
    if (a == 'V')
      return 5;
    if (a == 'X')
      return 10;


  }

  // int a=5;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          // Text(a.toString()),
          



        ],
      ),
    );
  }
}
