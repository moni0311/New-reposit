import 'dart:math';

import 'package:flutter/material.dart';
class root extends StatefulWidget {
  const root({super.key});

  @override
  State<root> createState() => _rootState();
}

class _rootState extends State<root> {
  final roott=TextEditingController();

  String num1="";
  String num2="";
  String optr="";

  bool clk=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(controller: roott,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          Row(
            children: [
              ElevatedButton(onPressed: (){
                if(clk)
                  {
                    num2="5";
                    roott.text="5";
                  }
                else
                  {
                    num1="5";
                    roott.text="5";
                  }
              }, child: Text("5")),
              ElevatedButton(onPressed: (){
                roott.text="√";
                optr="√";
                clk=true;
              }, child: Text("√")),
              ElevatedButton(onPressed: (){
                if(optr=='√');
                double a=double.parse(num2);
                double res=sqrt(a);
                roott.text=res.toString();
              }, child: Text("="))

            ],
          ),
          // ElevatedButton(onPressed: (){
          //   roott.text="√";
          //   optr="√";
          //   clk=true;
          // }, child: Text("√")),
          // ElevatedButton(onPressed: (){
          //   if(optr=='√');
          //   double a=double.parse(num2);
          //   double res=sqrt(a);
          //   roott.text=res.toString();
          // }, child: Text("="))


        ],
      ),
    );
  }
}
