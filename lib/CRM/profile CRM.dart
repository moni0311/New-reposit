import 'package:flutter/material.dart';
import 'package:untitled1/CRM/hom%20CRM.dart';

import 'model2.dart';
class pro extends StatefulWidget {
  const pro({super.key});

  @override
  State<pro> createState() => _proState();
}

class _proState extends State<pro> {
  final TextEditingController name =TextEditingController();
  final TextEditingController phno= TextEditingController();
  final TextEditingController user= TextEditingController();
  final TextEditingController dob= TextEditingController();
  final TextEditingController add= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Card(elevation: 10,
              //   child: TextFormField(
              //     controller: name,
              //     decoration: InputDecoration(
              //         border: InputBorder.none,
              //         icon: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Icon(Icons.search),
              //         ),
              //         hintText: "Search"
              //     ),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.only(right: 150,top: 10),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.person,color: Colors.white,),
                    ),
                    Text("cus details",style: TextStyle(
                        fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),

              TextFormField(
                controller: name,
                decoration: InputDecoration(
                    hintText: "Name",hintStyle: TextStyle(color: Colors.black),
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.drive_file_rename_outline),
                    )
                ),


              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: phno,
                  decoration: InputDecoration(
                      hintText: "Phone number",hintStyle: TextStyle(color: Colors.black),
                      icon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.phone),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: user,
                  decoration: InputDecoration(
                    hintText: "User ID",hintStyle: TextStyle(color: Colors.black),
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.email_outlined),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: dob,
                  decoration: InputDecoration(
                      hintText: "Date of birth",hintStyle: TextStyle(color: Colors.black),
                      icon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.calendar_month),
                      )
                  ),
                ),
              ),
              TextFormField(
                controller: add,
                decoration: InputDecoration(
                  hintText: "Address",hintStyle: TextStyle(color: Colors.black),
                ),
              ),
              TextFormField(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (


                    ){
                  // setState(() {
                  //   userDetails.add({
                  //     name.text,
                  //     phno.text,
                  //     user.text,
                  //     dob.text,
                  //     add.text
                  //
                  //   });
                  // });
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>homee()));
                },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                    ),
                    child: Text("Submit",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
              ),
              // Container(
              //   height: 40,
              //   width: 100,
              //   child: Column(
              //     children: [
              //     ],
              //   ),
              // )
              // Container(
              //   height: 800,
              //   child: ListView.builder(
              //       physics: new NeverScrollableScrollPhysics(),
              //       itemCount: 10,
              //       itemBuilder: (BuildContext context, int intex) {
              //         return ListTile(
              //           title: Container(
              //
              //             height: 100,
              //             width: 400,
              //             decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 border: Border.all(color: Colors.grey,width: 3.0),
              //                 borderRadius:BorderRadius.all(Radius.circular(10.0)),
              //                 boxShadow: [
              //                   BoxShadow(
              //                     blurRadius: 5,
              //                     color: Colors.black,
              //                     offset: Offset(0.5,1),
              //                   ),
              //                 ]
              //
              //             ),
              //             child: TextFormField(
              //               decoration: InputDecoration(
              //                 border: InputBorder.none
              //
              //               ),
              //             ),
              //
              //           ),
              //
              //
              //         );
              //
              //
              //       }
              //
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: ElevatedButton(onPressed: (){},
              //       style: ElevatedButton.styleFrom(backgroundColor:
              //       Colors.green),
              //       child: Text("Submit",style: TextStyle(
              //         color: Colors.black
              //       ),)),
              // )

            ],
          ),
        ),
      ),

    );
  }
}
