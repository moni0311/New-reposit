import 'package:flutter/material.dart';
class calci extends StatefulWidget {
  const calci ({super.key});

  @override
  State<calci> createState() => _State();
}

class _State extends State<calci> {

 final Editing=TextEditingController();
List text1=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
         TextField(
           controller:Editing,
           decoration: InputDecoration(
             border: OutlineInputBorder(),
           ),
         ),
          ElevatedButton(onPressed: (){
            setState(() {
              text1.add(Editing.text);

            });
          }, child: Text("Submit")),
          Container(
            height: 400,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: ListView.builder(
              itemCount: text1.length,
              itemBuilder: (context,intex)
                {
                  return Text(text1[intex]);
                }
            ),
          ),



        ],
      )



    //   body: Column(
    //   children: [
    //     TextFormField(
    //       decoration: InputDecoration(
    //         border: OutlineInputBorder(),
    //       ),
    //     ),
    //     ElevatedButton(onPressed: (){
    //
    //       }, child: Text('submit')),
    //     Container(
    //       height: 300,
    //       width: 300,
    //       decoration: BoxDecoration(
    //         border: Border.all()
    //       ),
    //
    //
    //     )
    //
    //
    //   ],
    // ),
    );


  }
}


