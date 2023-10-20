import 'package:flutter/material.dart';



class Ep extends StatelessWidget {
  const Ep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("goals/as.png"),
                  fit: BoxFit.fill,
                )
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 400,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(),


                  ),

                ),
              ),

            ],

          ),













        ],
      ),
    );
  }
}
