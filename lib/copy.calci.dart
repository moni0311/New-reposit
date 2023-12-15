// import 'package:flutter/material.dart';
//
// class asdfg extends StatefulWidget {
//   const asdfg({super.key});
//
//   @override
//   State<asdfg> createState() => _asdfgState();
// }
//
// class _asdfgState extends State<asdfg> {
//
//   final ctrl1= TextEditingController();
//   String num1 = "";
//   String num2 ="";
//   String optr= "";
//   bool clk = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SizedBox(height: 100,),
//           TextFormField(controller: ctrl,),
//           SizedBox(height: 100,),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton(
//                 onPressed: ()
//                 {
//                   if(clk)
//                   {
//                     num2 = "1";
//                     ctrl.text = num2;
//                   }
//                   else
//                   {
//                     num1 = "1";
//                     ctrl.text = num1;
//                   }
//                 },
//                 child: Text("1"),
//               ),
//               ElevatedButton(onPressed: (){
//                 if(clk)
//                 {
//                   num2 = "2";
//                   ctrl.text = num2;
//                 }
//                 else
//                 {
//                   num1 = "2";
//                   ctrl.text = num1;
//                 }
//               }, child: Text("2")),
//               ElevatedButton(onPressed: (){
//                 ctrl.text = "+";
//                 optr = "+";
//                 clk =true;
//
//
//
//               }, child: Text("+")),
//               ElevatedButton(onPressed: (){
//                 if(optr=="+")
//                 {
//                   int a = int.parse(num1);
//                   int b = int.parse(num2);
//
//                   int res = a+b;
//
//
//                   ctrl.text = res.toString();
//                 }
//
//               }, child: Text("=")),
//               ElevatedButton(onPressed: (){
//                 if(clk)
//                 {
//                   num2 = "3";
//                   ctrl.text = num2;
//                 }
//                 else
//                 {
//                   num1 = "3";
//                   ctrl.text = num1;
//                 }
//               }, child: Text('3')),
//               ElevatedButton(onPressed: (){
//                 if(clk)
//                   {
//                     num2="4";
//                     ctrl.text=num2;
//                   }
//                 else
//                   {
//                     num1="4";
//                     ctrl.text=num1;
//                   }
//               }, child: Text("4"))
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
