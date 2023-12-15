import 'dart:math';

import 'package:flutter/material.dart';
class Cal extends StatefulWidget {
  const Cal({super.key});

  @override
  State<Cal> createState() => _CalState();
}
// double calculateSquareRoot(double number){
//   double squareRoot=sqrt(number);
//   return squareRoot;
// }

class _CalState extends State<Cal> {
TextEditingController textt =TextEditingController();
String num1="";
String num2="";
String optr="";

bool click=false;
@override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [SizedBox(
          height: 400,
        ),
          Container(
            color: Colors.black12,
            child: TextFormField(controller: textt,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,
              ),
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blue,
                border: InputBorder.none
              ),
            ),
          ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               SizedBox(
                 width: 70,
                 height: 50,

                 child: ElevatedButton(onPressed: (){
                  textt.clear();
                  num1="";
                  num2="";
                  click=false;

                  },
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.white70
                     ),

                     child: Text("C",style: TextStyle(color: Colors.orange,
                     fontSize: 20),)),
               ),
               SizedBox(
                 width: 70,
                 height:50,
                 child: ElevatedButton(onPressed: (){

                    textt.text= "√";
                    optr=="√";
                    click =false;
                    },

                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.white70
                     ),
                     child: Text("√",style: TextStyle(color: Colors.blue,
                     fontSize: 20),)),
               ),
               SizedBox(
                 width: 70,
                 height: 50,
                 child: ElevatedButton(onPressed: (){
                   textt.text='%';
                   optr='%';
                   click=true;
                 },
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.white70
                     ),

                     child: Text("%",style: TextStyle(color: Colors.blue,
                     fontSize: 20),)),
               ),
               SizedBox(
                 width: 70,
                 height: 50,
                 child: ElevatedButton(onPressed: (){
                   textt.text='/';
                   optr='/';
                   click=true;
                 },
                     style: ElevatedButton.styleFrom(
                       backgroundColor: Colors.white70
                     ),

                     child: Text('/',style: TextStyle(color: Colors.blue,
                     fontSize: 20),)),
               )
             ],
           ),
         ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 70,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    if(click==true)
                      {
                        num2+="7";
                        textt.text=num2;
                      }
                    else
                      {
                        num1+="7";
                        textt.text=num1;
                      }
                  }, child: Text("7",style: TextStyle(color: Colors.black,
                  fontSize: 30),)),
                ),
                SizedBox(
                  width: 70,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    if(click==true)
                      {
                        num2+="8";
                        textt.text=num2;
                      }
                    else
                      {
                        num1+="8";
                        textt.text=num1;
                      }
                  }, child:Text("8",style: TextStyle(color: Colors.black,
                  fontSize: 30),)),
                ),
                SizedBox(
                  width: 70,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    if(click==true)
                      {
                        num2+="9";
                        textt.text=num2;
                      }
                    else
                      {
                        num1+="9";
                        textt.text=num1;
                      }
                  }, child: Text("9",style: TextStyle(color: Colors.black,
                  fontSize: 30),)),
                ),
                SizedBox(
                  width: 70,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                   textt.text="*";
                   optr="*";
                   click=true;
                  },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70
                      ),

                      child: Text("*",style: TextStyle(color: Colors.deepPurple,
                      fontSize: 30),)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 70,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    if(click==true)
                      {
                        num2+="4";
                        textt.text=num2;
                      }
                    else
                      {
                        num1+="4";
                        textt.text=num1;
                      }
                  }, child: Text("4",style: TextStyle(color: Colors.black,
                  fontSize: 30),)),
                ),
                SizedBox(
                  width: 70,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    if (click==true)
                      {
                        num2+="5";
                        textt.text=num2;
                      }
                    else
                      {
                        num1+="5";
                        textt.text=num1;
                      }
                  }, child: Text("5",style: TextStyle(color: Colors.black,
                  fontSize: 30),)),
                ),
                SizedBox(
                  width: 70,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    if (click==true)
                      {
                        num2+="6";
                        textt.text=num2;
                      }
                    else
                      {
                        num1+="6";
                        textt.text=num1;
                      }

                  }, child:Text("6",style: TextStyle(color: Colors.black,
                  fontSize: 30),)),
                ),
                SizedBox(
                  width: 70,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      textt.text="-";
                      optr="-";
                      click=true;
                    });
                  },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70
                      ),
                      child: Text("-",style: TextStyle(color: Colors.blueAccent,
                      fontSize: 30),)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 70,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    if (click=true)
                      {
                        num2+="1";
                        textt.text=num2;

                      }
                    else
                      {
                        num1+="1";
                        textt.text=num1;
                      }

                  }, child: Text("1",style: TextStyle(color: Colors.black,
                  fontSize: 30),)),
                ),
                SizedBox(

                  width: 70,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    if (click=true)
                    {
                      num2+="2";
                      textt.text=num2;
                    }
                    else
                      {
                        num1+="2";
                        textt.text=num1;

                      }
                  }, child: Text("2",style: TextStyle(color: Colors.black,
                  fontSize: 30),)),
                ),
                SizedBox(
                  width: 70,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    if (click==true)
                      {
                        num2+="3";
                        textt.text=num2;
                      }
                    else
                      {
                        num1+="3";
                        textt.text=num1;
                      }
                  }, child: Text("3",style: TextStyle(color: Colors.black,
                  fontSize: 30),)),
                ),
                SizedBox(
                  width: 70,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    textt.text="+";
                    optr="+";
                    click=true;
                  },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white70
                      ),

                      child: Text("+",style: TextStyle(color: Colors.blueAccent,
                  fontSize: 30),)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width:70,
                    height: 50,
                    child: ElevatedButton(onPressed: (){
                     setState(() {
                       textt.text=textt.text.substring(0,textt.text.length-1);
                       num1=textt.text;
                     });
                    }, child: Text("⌫",
                    style: TextStyle(color: Colors.black,
                    ),))),
                SizedBox(
                  width: 70,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    if(click==true)
                      {
                        num2+="0";
                        textt.text=num2;
                      }
                    else
                      {
                        num1+="0";
                        textt.text=num1;
                      }
                  }, child: Text("0",style: TextStyle(color: Colors.black,
                  fontSize: 30),)),
                ),
                SizedBox(
                  width: 70,
                    height: 50,
                    child: ElevatedButton(onPressed: (){
                      if(click==true)
                        {
                          num2+=".";
                          textt.text=num2;
                        }
                      else
                        {
                          num1+=".";
                          textt.text=num1;
                        }
                    }, child: Text(".",
                    style: TextStyle(color: Colors.black,fontSize: 30),))),
                SizedBox(
                  width: 70,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    if(optr=='-')
                      {
                        double a=double.parse(num1);
                        double b= double.parse(num2);
                        double res=a-b;
                        textt.text=res.toString();
                      }
                    if(optr=='+')
                      {
                       double a=double.parse(num1);
                        double b= double.parse(num2);
                        double res=a+b;

                        textt.text=res.toString();
                      }
                    if(optr=='*')
                      {
                        double a=double.parse(num1);
                        double b=double.parse(num2);
                        double res=a*b;
                        textt.text=res.toString();
                      }

                    if (optr=='√')
                      {
                      double a = double.parse(num2);
                      //double res=sqrt(a);
                     num res= pow (a,1/2);
                       textt.text= res.toString();


                      }
                    if(optr=='%')
                    {
                      double a=double.parse(num1);
                      double b=double.parse(num2);
                      double res=(a*b)/100;
                      textt.text=res.toString();
                    }

                    if (optr=="/")
                      {
                        int a=int.parse(num1);
                        int b=int.parse(num2);
                        double res=a/b;
                        textt.text=res.toString();
                      }
                    num1=textt.text;
                    num2="";
                    optr="";
                    click=true;

                  },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent
                      ),
                      child:Text("=",style: TextStyle(color: Colors.white,
                        fontSize: 30
                  ),)),
                ),


              ],
            ),
          ),


        ],
      ),

    );
  }
}









