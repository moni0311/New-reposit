import 'package:flutter/material.dart';
import 'package:untitled1/colors.dart';
class regi extends StatefulWidget {
  const regi({super.key});

  @override
  State<regi> createState() => _regiState();
}

class _regiState extends State<regi> {
  final _formGlobalkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   colors: [log3,log4]
          //
          // ),
          image: DecorationImage(
            image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/011/301/802/small/blur-background-plain-with-space-free-photo.jpg"),
            fit: BoxFit.fill
          ),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formGlobalkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Register",style: TextStyle(
                    fontSize: 35,fontWeight: FontWeight.bold
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Container(
                      height: 400,
                      width: 500,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 10),
                            child: Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54)
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.person),
                                  hintText: "Full Name"
                                ),
                                validator: (value) {
                                  if (value==null ||
                                      !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                          .hasMatch(value)) {
                                    return 'Enter your Name !';
                                  }
                                  return null;
                                },

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 10),
                            child: Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54)
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email_outlined),
                                  hintText: "Email"
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
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 10),
                            child: Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                                // borderRadius: BorderRadius.only(
                                //   topRight: Radius.circular(20),
                                //   bottomLeft: Radius.circular(20),
                                // )
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.pan_tool_alt_outlined
                                  ),
                                  hintText: " password"
                                ),
                                  validator: (value){
                                    if(value==null || value.length<8)
                                    {
                                      return "Enter a valid password";
                                    }
                                  }

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,left: 10),
                            child: Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black54),
                                // borderRadius: BorderRadius.only(
                                //     topRight: Radius.circular(20),
                                // bottomLeft: Radius.circular(20))
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.password_sharp),
                                  hintText: "Confirm password"
                                ),
                                  validator: (value){
                                    if(value==null || value.length<8)
                                    {
                                      return "Enter a confirm password";
                                    }
                                  }

                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 150,top: 20),
                            child: Row(
                              children: [
                                Text("Already a member? ",style: TextStyle(
                                  color: Colors.black87
                                ),),
                              Text("Login",style: TextStyle(color: Colors.red),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: ElevatedButton(onPressed: (){
                              if(_formGlobalkey.currentState!.validate())
                              {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar
                                  (content: Text("valided")));
                              }
                            },
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                                child: Text("Register",style: TextStyle(
                                  color: Colors.black,fontSize: 20
                                ),)),
                          )
                        ],
                      ),










                    ),
                  ),
                ),


              ],
            ),
          ),
        )
      ),
    );
  }
}
