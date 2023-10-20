import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor';

class TRY extends StatefulWidget {
  const TRY({super.key});

  @override
  State<TRY> createState() => _TRYState();
}

class _TRYState extends State<TRY> {
  final _formGlobalkey=GlobalKey<FormState>();
  double opacityLevel=1.0;
  void _changeOpacity(){
    setState(()=> opacityLevel=opacityLevel==0 ? 1.0 : 0.0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:
      Form(
       key:_formGlobalkey,
       child: Column(
         children: [
           Center(child: Padding(
             padding: const EdgeInsets.only(top: 200),
             child: Text("Login",style: TextStyle(fontSize: 40),),
           )),
           Container(
             width: 330,
             decoration: BoxDecoration(
               color: Colors.black12,
               borderRadius: BorderRadius.circular(8.0),
             ),
             child: SingleChildScrollView(
               scrollDirection: Axis.vertical,
               child: TextFormField(

                 decoration: InputDecoration(
                   border: InputBorder.none,
                   prefixIcon: Icon(Icons.person),
                   hintText: "Email address or Phone number",hintStyle:
                     TextStyle(color: Colors.black38)
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
             padding: const EdgeInsets.all(8.0),
             child: Container(
               width: 330,
               decoration: BoxDecoration(
                 color: Colors.black12,
                 borderRadius: BorderRadius.circular(8.0)
               ),
               child: TextFormField(
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   prefixIcon: Icon(Icons.password),
                   hintText: "Password",hintStyle:
                 TextStyle(color: Colors.black38
                 ),
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
           AnimatedOpacity(opacity: opacityLevel,
               duration: const Duration(seconds: 3),
           child: const FlutterLogo(),),
           ElevatedButton(onPressed: (){
             if(_formGlobalkey.currentState!.validate())
               {
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar
                   (content: Text("valided")));
               }
           }, child: Text("Login"))


         ],
       ),
     ),
    );
  }
}
