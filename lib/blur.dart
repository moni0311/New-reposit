
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:blur/blur.dart';
import 'package:untitled1/New%20stateful.dart';
import 'package:untitled1/Validate.dart';
import 'package:untitled1/botnavi.dart';
import 'package:untitled1/pop.dart';



class sr extends StatefulWidget {
  const sr({super.key});

  @override
  State<sr> createState() => _srState();

}

class _srState extends State<sr> {
  final _formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formGlobalKey,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("goals/na.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 500,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),

                      image: DecorationImage(
                        image: AssetImage("goals/bb.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),


                    child:ClipRRect(borderRadius: BorderRadius.circular(20),
                      child: BackdropFilter(
                        filter:ImageFilter.blur(sigmaY: 10,sigmaX: 10),
                       child: Column(
                          children: [
                            GestureDetector(
                              onTap: ()
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const fe()),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height:100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("goals/ye.png"),fit: BoxFit.fill,
                                    ),
                                    shape:BoxShape.circle,
                                  ),

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Email',

                                ),
                                validator: (value) {
                                  if (value==null ||
                                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(value)) {
                                    return 'Enter a valid email!';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Password',

                                ),
                                validator: (value) {
                            if (value == null ||value.length<7)
                            {
                            return 'Enter a valid password!';
                            }
                            return null;
                            },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    if (_formGlobalKey.currentState!.validate()) {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text('Submit')));
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Botnavi()),
                                      );

                                    }




                                  },
                                child: Text("Submit"),
                              ),
                            ),
                        ],
                      ),
                    ),

                              ),
                ),
                ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(
                          image: AssetImage("goals/ap.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: AssetImage("goals/ro.png"),
                                  ),
                                ),


                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Column(
                                children: [
                                  ElevatedButton(onPressed: (){}, child: Icon(Icons.download)),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ElevatedButton(onPressed: (){}, child: Icon(Icons.share)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage("goals/ro.png"),
                                    )
                                ),
                              ),
                            )

                          ],
                        ),
                      )




                  ),
                ),



                  ],


                ),
          )


          ,
                      ),
      ),

                    );


































  }
}
