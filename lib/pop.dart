import 'package:flutter/material.dart';

import 'package:untitled1/botnavi.dart';
class fe extends StatelessWidget {
  const fe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(child: Text("Reports",style: TextStyle(color: Colors.black),),
        ),
        actions: [
          Icon(Icons.cancel),
        ],
      ),
      body: Column(
        children: [
          Center(child: Text("All Reports",style: TextStyle(fontSize: 20),)),

          Center(
            child: Card(
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.person),
                ),
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text("Report 1")),
                ),
                trailing: Icon(Icons.menu),
              ),


            ),
          ),
          Card(
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.person),
              ),
              title: Center(child: Text("Report 2")),
              trailing: Icon(Icons.menu),
            )
            ,
          ),
          Card(
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.person),
              ),
              title: Center(child: Text("Report 3")),
              trailing: Icon(Icons.menu),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Botnavi()),
            );}, child: Text("singup",style: TextStyle(fontSize: 20),)),
          ),
          Row(
            children: [
              Text("help?",style: TextStyle(fontSize: 20),)
            ],
          )




        ],

      ),



    );
  }
}
