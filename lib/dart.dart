import 'package:flutter/material.dart';
class ab extends StatelessWidget {
  const ab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("goals/mo.png"),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(),

              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: Column(
                            children: [
                              Image.asset("goals/as.png"),
                              Text("ABC"),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(),
                              ),
                              child: Column(
                                children: [
                                  Image.asset("goals/as.png"),
                                  Text("ABC"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),




                    ],
                  ),
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                             height: 100,
                             width: 100,
                             decoration: BoxDecoration(
                               border: Border.all(),
                             ),
                             child: Column(
                               children: [
                                 Image.asset("goals/as.png"),

                               ],
                             ),
                           ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                       height: 50,
                         width: 50,
                         decoration: BoxDecoration(
                           border: Border.all(),
                           image: DecorationImage(
                             image: AssetImage("goals/as.png"),
                           ),
                         ),

                       ),
                     ),
                     Column(
                       children: [
                         Text("ABC"),
                         Text("CDE"),
                         Text("EFG"),
                       ],
                     )

                   ],
                 ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage("goals/as.png"),
                          ),
                        ),

                      ),





                    ],
                  ),



                    ],
                  ),





                  ),
          ),
          Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(),

            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),

                    child: Center(
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: "Enter name",
                          ),
                        ),
                      ),
                    ),

                ),
                ElevatedButton(onPressed: (){}, child: Text("Login")),
              ],
            ),

            ),





            ],




      ),

      );

  }
}

