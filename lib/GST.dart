import 'package:flutter/material.dart';
import 'package:untitled1/ctrl.Container.dart';
class Gst extends StatefulWidget {
  const Gst({super.key});

  @override
  State<Gst> createState() => _GstState();
}

class _GstState extends State<Gst> {
  final ctrl= TextEditingController();
  final ctrl1=TextEditingController();
  final ctrl2=TextEditingController();
  final ctrl3=TextEditingController();
  final ctrl4=TextEditingController();
  final ctrl5=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.arrow_back),
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text("GST calculator",style: TextStyle(color: Colors.white),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          ),
        ],

      ),
      body: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //       hintText: 'Amount',
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Amount",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          TextFormField(controller: ctrl),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Tax",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
            TextFormField(controller: ctrl1,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(controller: ctrl2,
                decoration: InputDecoration(
                  hintText: 'Net include tax',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(controller: ctrl3,
              decoration: InputDecoration(
                hintText: 'Net exclude tax ',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(controller: ctrl4,
              decoration: InputDecoration(
                hintText: 'Include tax Amount',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(controller: ctrl5,
              decoration: InputDecoration(
                hintText: 'Exclude tax Amount',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              child: ElevatedButton(onPressed: (){
               setState(() {
                 double a=double.parse(ctrl.text);
                 double b=double.parse(ctrl1.text);
                 double c=(a*(100/(100+b)));
                 ctrl2.text=c.toString();
               });


                },style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent
              ), child: Text("Net pay of include tax",style: TextStyle(color: Colors.white),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  double a=double.parse(ctrl.text);
                  double b=double.parse(ctrl1.text);
                  double c=a+(a*b/100);
                  ctrl3.text=c.toString();
                });

              }, style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigoAccent
                  ), child: Text("Net pay of exclude tax",style: TextStyle(
                color: Colors.white
              ),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  double a=double.parse(ctrl.text);
                  double b=double.parse(ctrl1.text);
                  double c=a-(a*(100/100+b));
                  ctrl4.text=c.toString();
                });

              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigoAccent,
                  ),
                  child: Text("Include tax amount",style: TextStyle(color: Colors.white),)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  double a=double.parse(ctrl.text);
                  double b=double.parse(ctrl1.text);
                  double c=a*b/100;
                  ctrl5.text=c.toString();
                });
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigoAccent
                  ),
                  child: Text("Exclude tax amount",style: TextStyle(color: Colors.white),)),
            ),
          ),



        ],
      ),
    );
  }
}
