import 'package:flutter/material.dart';
class calcii extends StatefulWidget {
  const calcii({super.key});

  @override
  State<calcii> createState() => _calciiState();
}

class _calciiState extends State<calcii> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black54,
        leading: Icon(Icons.settings,color: Colors.orange,),
        actions: [
          Text('DEG',style: TextStyle(color: Colors.white38),)
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      children: [

                      ],
                    )
                  ],
                ),
              ),

            )
          ],
        ),
      ),);

  }
}
