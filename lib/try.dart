import 'package:flutter/material.dart';
class Sp extends StatelessWidget {
  const Sp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Container(
            height: 300,
            width: 350,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Column(
                        children: [
                          Image.asset("goals/as.png"),
                          Text("data"),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Column(
                        children: [
                          Image.asset("goals/as.png"),
                          Text("data"),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.cyan,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.cyan,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.cyan,
                        ),
                      ],
                    ),
                    Text("asdasf"),



                  ],
                )
              ],
            ),
          ),





        ],
      ),
    );
  }
}
