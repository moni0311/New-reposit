import 'package:flutter/material.dart';
class cont2 extends StatefulWidget {
  const cont2({super.key});

  @override
  State<cont2> createState() => _cont2State();
}

class _cont2State extends State<cont2> {
  int a=0;
  void plus(){
    setState(() {
      a++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: plus, child: Text("click")),
          Container(
            height: 800,
            child: ListView.builder(
              itemCount: a,
                itemBuilder: (BuildContext context,int intex )
                {
                  return Container(
                    height: 70,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: Colors.orange

                    ),
                  );
                }
            )
          )

        ],
      ),
    );
  }
}
