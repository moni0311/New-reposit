import 'dart:math';

import 'package:flutter/material.dart';
class miny extends StatefulWidget {
  const miny({super.key});

  @override
  State<miny> createState() => _minyState();
}

class _minyState extends State<miny> {
  List<int> lis=[];
  final text1=TextEditingController();
  Widget sheetbuild(String result){
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('$result', style: TextStyle(color: Colors.black),)
          ],
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(controller: text1,
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              lis.add(int.parse(text1.text));
            });


          }, child: Text("Submit")),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: lis.length,
              itemBuilder: (Context, intex){
                return Text(lis[intex].toString());
              }

            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
             var a =lis.reduce((value, element) => value<element?value:element);
             text1.text=a.toString();
             showModalBottomSheet(
               isScrollControlled: true,
                 useSafeArea: true,
                 context: context,
                 builder:(context)=>sheetbuild(text1.text));

            });

          }, child: Text("Min")),
          TextFormField(

            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              var b=lis.reduce((value, element) => value>element?value:element);
              text1.text=b.toString();
              showModalBottomSheet(
                isScrollControlled: true,
                  useSafeArea: true,
                  context: context,
                  builder: (context)=> sheetbuild(text1.text));



            }, child: Text("Max")),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              var list =lis;
              list.sort();

              text1.text = list.toString();
              showModalBottomSheet(
                isScrollControlled: true,
                  backgroundColor: Colors.black,
                useSafeArea: true,
                context: context,
                builder: (context)=>sheetbuild(text1.text),
              );
              },
                  child: Text("Assending"),


            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              var list=lis;
              lis.sort((a,b)=>b.compareTo(a));
              // list.sort((a,b)=>a.compareTo(b)90-4;
              text1.text=list.toString();
              showModalBottomSheet(
                isScrollControlled: true,
                  useSafeArea: true,
                  context: context,
                  builder: (context)=>sheetbuild(text1.text));

            }, child: Text('Desending')),
          ),

          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  // int threshold = int.tryParse(text1.text) ?? 0;
                  int threshold=15;
                  List<int> lessThanList = lis.where((number) => number<threshold).toList();

                  return AlertDialog(
                    title: Text("Less than $threshold"),
                    content: Column(
                      children: lessThanList.map((number) {
                        return Text(number.toString());
                      }).toList(),
                    ),
                  );
                },
              );
            },
            child: Text("less than"),
          ),

          ElevatedButton(
            onPressed: () {
              int threshold=5;
              List<int> oddList = lis.where((number) => number % 2 != 0).toList();

              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Odd Numbers"),
                    content: Column(
                      children: oddList.map((number) {
                        return Text(number.toString());
                      }).toList(),
                    ),
                    actions: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text("Odd Numbers"),
          ),
          ElevatedButton(
              onPressed: (){
                int threshold=15;
                // List<lis>evenLessList=lis.where((number))=>threshold
                List<int> evenLessThanList = lis.where((number) =>
                number < threshold && number % 2 == 0).toList();
                showDialog(context: context,
                    builder:(BuildContext context)
                {
                  return AlertDialog(
                    title: Text("Even Numbers Less than $threshold"),
                    content: Column(
                      children:evenLessThanList.map((number) {
                        return Text(number.toString());
                      }).toList(),
                    ),
                  );
                }
                );


              }, child: Text("Even numbers less than"))
    ],
    ),
    );
  }
}
