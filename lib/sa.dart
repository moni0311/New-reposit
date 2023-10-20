import 'package:flutter/material.dart';

import 'botnavi.dart';


class sa extends StatelessWidget {
  const sa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Botnavi()),
            );


          }, child: Text("ok"))

        ],
      ),
    );
  }
}
