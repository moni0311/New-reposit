import 'package:flutter/material.dart';
import 'package:untitled1/New%20stateful.dart';
import 'package:untitled1/blur.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FormScreen(),
  ));
}
class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form validation'),
      ),
      body: Form(
        key: _formGlobalKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'email'
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
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'password'
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
              child: ElevatedButton(onPressed: (){

                if(_formGlobalKey.currentState!.validate())
                  {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("valid ok")));
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const sr()),
                    );
                  }

              }, child: Text("Submit")),
            )









          ],


        ),
      ),
    );
  }



}
