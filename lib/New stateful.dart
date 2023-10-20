
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled1/Amazon.dart';
import 'package:untitled1/botnavi.dart';



class bot extends StatefulWidget {
  const bot({super.key});

  @override
  State<bot> createState() => _botState();
}

class _botState extends State<bot> {
  final _formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body:
        Form(
          key: _formGlobalKey,
          child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.pinkAccent,
                    Colors.blueAccent,
                    Colors.orange,
                    Colors.greenAccent,
                    Colors.deepOrangeAccent,
                  ],
                ),
              ),
           child: SingleChildScrollView(
             child: Column(
               children: [
                 Container(
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Container(
                               height: 180,
                               width: 150,
                               decoration: BoxDecoration(
                                 border:Border.all(),
                                 borderRadius: BorderRadius.only(
                                   topRight: Radius.circular(30),
                                   bottomLeft: Radius.circular(30),
                                 ),

                               ),
                               child: Column(
                                 children: [
                                   Container(
                                     height: 150,
                                     width: 150,
                                     decoration: BoxDecoration(
                                       border: Border.all(),
                                       borderRadius: BorderRadius.only(
                                         topRight:  Radius.circular(30),
                                       ),
                                       image: DecorationImage(
                                         image: AssetImage("goals/nt.jpg"),
                                         fit: BoxFit.fill,
                                       ),
                                     ),

                                   ),
                                   Text("A"),

                                 ],
                               ),


                             ),
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             height: 180,
                             width: 150,
                             decoration: BoxDecoration(
                               border: Border.all(),
                               borderRadius: BorderRadius.only(
                                 topRight: Radius.circular(30),
                                 bottomLeft: Radius.circular(30),
                               ),
                             ),
                             child: Column(
                               children: [
                                 Container(
                                   height: 150,
                                   width: 150,
                                   decoration: BoxDecoration(
                                     border: Border.all(),
                                     borderRadius: BorderRadius.only(
                                       topRight: Radius.circular(30),

                                     ),
                                     image: DecorationImage(
                                       image: AssetImage("goals/bb.jpg"),
                                       fit: BoxFit.fill,
                                     ),
                                   ),


                                 ),
                                 Text("B"),
                               ],

                             ),
                           ),
                         ),
                       ),

                     ],
                   ),
                 ),
                 Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 180,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              border: Border.all(),
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(30),
                                                bottomLeft: Radius.circular(30),
                                              ),

                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 150,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                    border:Border.all(),
                                                    borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(30),
                                                    ),
                                                    image: DecorationImage(
                                                      image: AssetImage("goals/bb.jpg"),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                                Text("C"),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 180,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            border:Border.all(),
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(30),
                                              bottomLeft: Radius.circular(30),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                child: Container(
                                                  height: 150,
                                                  width: 150,
                                                  decoration: BoxDecoration(
                                                    border:Border.all(),
                                                    borderRadius: BorderRadius.only(
                                                      topRight: Radius.circular(30),
                                                    ),
                                                    image: DecorationImage(
                                                      image: AssetImage("goals/nt.jpg"),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text("D"),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 300,
                                    width: 350,
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      image: DecorationImage(
                                        image: AssetImage("goals/ba.png"),
                                        fit: BoxFit.fill,
                                      )
                                    ),
                                   child: ClipRRect(
                                     child: BackdropFilter(
                                       filter:ImageFilter.blur(sigmaY: 10,sigmaX: 10),

                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 70,left: 30),
                                                    child: Container(
                                                       height: 100,
                                                       width: 70,
                                                       decoration: BoxDecoration(
                                                         border: Border.all(),
                                                         image: DecorationImage(
                                                           image: AssetImage("goals/ba.png"),
                                                           fit: BoxFit.fill,
                                                         ),
                                                       ),

                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(top: 70,left: 40),
                                                        child: Container(
                                                          height: 50,
                                                          width: 200,
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),
                                                            color: Colors.white,
                                                          ),
                                                          child: TextFormField(
                                                            decoration: InputDecoration(
                                                              border: InputBorder.none,
                                                              labelText: 'Enter Mobile Number',suffixStyle: TextStyle(fontSize: 5),


                                                            ),

                                                            validator: (value) {
                                                              if (value==null|| value.length<6
                                                                  // !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                                  //     .hasMatch(value)
                                                              ) {
                                                                return 'Enter a valid number!';
                                                              }
                                                              return null;

                                                            },



                                                          ),



                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: ElevatedButton(onPressed: (){

                                                          if (_formGlobalKey.currentState!.validate()) {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(builder: (context) => const Botnavi()),
                                                            );
                                                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Submitted")));
                                                          }



                                                        }, child: const Text("Login")),
                                                      ),








                                                    ],

                                                  ),

                                                ],
                                              ),
                                            ],
                                          ),







                                     ),
                                     ),
                                   ),
                                ),
                   ],
                 ),
           ),
          ),
        ),
      );


    }



  }


