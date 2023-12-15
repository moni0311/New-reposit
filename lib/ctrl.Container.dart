import 'package:flutter/material.dart';
class ctrl extends StatefulWidget {
  const ctrl({super.key});

  @override
  State<ctrl> createState() => _ctrlState();
}

class _ctrlState extends State<ctrl> {
  // bool ctl=true;
  bool clk=false;

  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      body: Column(
        children: [
          Visibility(
            visible: clk,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.orange,
                  // border: Border.all()
                ),

          )),
          ElevatedButton(onPressed: (){
            setState(() {
             clk=!clk;
            });
          }, child: Text("Submit")),




        ],
      ),
    );
  }
}
