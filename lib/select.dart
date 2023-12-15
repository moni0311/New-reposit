import 'package:flutter/material.dart';
class Select extends StatefulWidget {
  const Select({super.key});

  @override
  State<Select> createState() => _SelectState();
}

class _SelectState extends State<Select> {
  String selectedOption = "";
  List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  get result => null;
  Future<void> _showSelectOptionDiolog() async{
    context:context;
    builder: (BuildContext context){
      return SimpleDialog(
        title: Text('Select an Option'),
      children: options.map((String option){
        return SimpleDialogOption(
          onPressed: (){
            Navigator.pop(context, option);
          },
          child: Text(option),


        );
      }).toList(),
      );

    };
    if(result!=null){
      setState(() {
        selectedOption = result;
      });

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Selected Option: $selectedOption"),
ElevatedButton(onPressed: _showSelectOptionDiolog, child: Text("select Option"))
    ],
    ),
    );
  }
}
