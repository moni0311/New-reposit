import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled1/langu.dart';
class loggin extends StatefulWidget {
  const loggin({super.key});

  @override
  State<loggin> createState() => _logginState();
}

class _logginState extends State<loggin> {
  final _formGlobalkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/011/301/802/small/blur-background-plain-with-space-free-photo.jpg"),
            fit: BoxFit.fill
          )

          // gradient: LinearGradient(
          //   colors: [Colors.black26,Colors.black26]
          // ),
        ),
        child: Form(
          key: _formGlobalkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Text("Login",style: TextStyle(
                  fontSize: 30,fontWeight: FontWeight.bold
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value)
                  {
                    if(value==null || value.isEmpty || value.length<3|| !RegExp(r"^"
                    r"[a-zA-Z ]").hasMatch(value!))
                    {
                      return "Check Username";
                    }
                  },
                  decoration:
                  InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Username",
                    // hintText: "Enter Username",
                    border:OutlineInputBorder(

                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
               // Padding(
               //   padding: const EdgeInsets.all(8.0),
               //   child: Container(
               //     height: 45,
               //     width: 400,
               //     decoration: BoxDecoration(
               //       color: Colors.black12,
               //       borderRadius: BorderRadius.circular(20)
               //     ),
               //     child: TextFormField(
               //       decoration: InputDecoration(
               //          border: InputBorder.none,
               //          icon: Padding(
               //            padding: const EdgeInsets.all(8.0),
               //            child: Padding(
               //              padding: const EdgeInsets.all(8.0),
               //              child: Icon(Icons.password),
               //            ),
               //          ),
               //          hintText: "Enter secret code"
               //      ),
               //         // validator: (value){
               //         //   if(value==null || value.length<8)
               //         //   {
               //         //     return "Enter a valid password";
               //         //   }
               //         // }
               //       validator: (value){
               //         if(value==null || value.isEmpty||value.length<8|| !RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(value!))
               //         {
               //           return "Check password";
               //         }
               //       },
               //
               //     ),
               //   ),
               // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value){
                    if(value==null || value.isEmpty||value.length<8|| !RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(value!))
                    {
                      return "Check password";
                    }
                  },
                  decoration:  InputDecoration(
                      prefixIcon: Icon(Icons.key),
                      labelText:"Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      )

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: TextButton(onPressed: (){}, child:Text("Forgot Password ?")),
              ),
              Card(
                elevation: 20,
                child: ElevatedButton(onPressed: (){
                  if(_formGlobalkey.currentState!.validate())
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar
                      (content: Text("valided")));
                    Navigator.push(context, MaterialPageRoute(builder: (Context)=>lang()));
                  }

                },
                    style: ElevatedButton.styleFrom(),
                    child: Text("Login",style: TextStyle(color: Colors.black),)),
              )
            ],
          ),
        ),

      ),
    );
  }
}
