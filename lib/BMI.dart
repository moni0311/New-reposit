import 'package:flutter/material.dart';
import 'package:untitled1/ctrl.Container.dart';
class BM extends StatefulWidget {
  const BM({super.key});

  @override
  State<BM> createState() => _BMState();
}

class _BMState extends State<BM> {
  final ctrl1=TextEditingController();
  final ctrl2=TextEditingController();
  final ctrl3=TextEditingController();
  final ctrl4=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.arrow_back),
        title: Text('BMI calculator'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("height",style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          TextFormField(controller: ctrl1,
            decoration: InputDecoration(

            ),
          ),
          Row(
            children: [
              Text("Weight",style: TextStyle(fontSize: 20),),

            ],
          ),
          TextFormField(controller: ctrl2,
            decoration: InputDecoration(
            ),
          ),
          TextFormField(controller: ctrl3,
            decoration: InputDecoration(
              hintText: "Result",hintStyle: TextStyle(fontSize: 20)

            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Row(
          //     children: [
          //       ElevatedButton(onPressed: (){
          //         setState(() {
          //           double a = double.parse(ctrl1.text);
          //           double b = double.parse(ctrl2.text);
          //           // double c=((b*100*100/a*a));
          //           double c = a / (b * b / 10000);
          //           if (c <= 18.52) {
          //             showDialog(context: context,
          //                 builder: (BuildContext context) {
          //                   return AlertDialog(
          //                     title: Text("You are too thin\n Your BMI is: ${c
          //                         .toStringAsFixed(2)}"),
          //
          //                   );
          //                 }
          //             );
          //           }
          //           else if ((25.1 <= c) & (c <= 39.9)) {
          //             showDialog(context: context,
          //                 builder: (BuildContext context) {
          //                   return AlertDialog(
          //                     title: Text(
          //                         "You are Over weight\n Your BMI is: ${c
          //                             .toStringAsFixed(2)}"),
          //                   );
          //                 }
          //             );
          //
          //         }
          //       }, child: Text("Calculate")),
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: ElevatedButton(onPressed: (){
          //
          //         }, child: Text("Delete")),
          //       )
          //     ],
          //   ),
          // ),
          ElevatedButton(onPressed: (){
            setState(() {
              double a=double.parse(ctrl1.text);
              double b=double.parse(ctrl2.text);
              double c = a / (b * b / 10000);
              ctrl3.text=c.toString();
              if(c<=18.5)
                {
                  showDialog(context: context,
                      builder: (BuildContext context)
                  {
                    return AlertDialog
                      (
                      title: Text("Your are Too Thin \n You BMI is: ${c.toStringAsFixed(2)}"),
                      backgroundColor: Colors.blue,


                    );


                  }
                  );
                }
              else if((18.6<=c) & (c<=25))
                {
                  showDialog(context: context,
                      builder:(BuildContext context)
                  {
                    return AlertDialog(
                      title: Text("You are normal\n you are BMI:${c.toString()}"),
                      backgroundColor: Colors.blue,
                    );
                  }
                  );
                }
              else if((25.5<c)&(c<39.9))
                {
                  showDialog(context: context,
                      builder: (BuildContext context)
                  {
                    return AlertDialog(
                      title: Text("you are overweight\n you are BMI is:${c.toString()}"),
                      backgroundColor: Colors.blue,
                    );
                  }
                  );
                }
              else
                {
                  showDialog(context: context,
                      builder: (BuildContext context)
                  {
                    return AlertDialog(
                      title: Text("You are too obese\n your BMI is:${c.toString()}"),
                      backgroundColor: Colors.blue,
                    );
                  }
                  );
                }

            });
          }, child: Text("Calculate")),
          ElevatedButton(onPressed: (){
            ctrl1.clear();
            ctrl2.clear();
            ctrl3.clear();
          }, child: Text("clear"))

        ],
      ),
    );
  }
}
