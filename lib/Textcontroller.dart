import 'package:flutter/material.dart';
class TT extends StatefulWidget {
  const TT({super.key});

  @override
  State<TT> createState() => _TTState();
}

class _TTState extends State<TT> {
  final editing=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(controller: editing,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              editing.text= '8';
            }, child: Text("click")),
          )

        ],
      ),
    );
  }
}
