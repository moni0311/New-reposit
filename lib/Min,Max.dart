import 'package:flutter/material.dart';



class Max extends StatefulWidget {
  const Max ({super.key});
  @override
  State<Max> createState() => _MaxState();
}
class _MaxState extends State<Max> {
  final text1=TextEditingController();
  final text2=TextEditingController();
  final text3=TextEditingController();
  final text4=TextEditingController();
  List list = [];



  int findMin() {
    return  list.reduce(
            (first, next) => first < next ? first : next);
  }
  int findmax() {
    return  list.reduce(
            (current, next) => current > next ? current : next);

  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: text1,
              decoration: InputDecoration(border: OutlineInputBorder()),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              setState(() {
                list.add(int.parse(text1.text));
              }
              );
            },
                child: Text('ok')
            ),
          ),
          Container(
            height: 300,
            width: 350,
            decoration: BoxDecoration(border: Border.all()),

            child:ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount:list.length ,
                itemBuilder: (context ,index){
                  return Text(list[index].toString());
                }
            ),
          ),
          SizedBox(height: 10,),
          TextFormField(
            controller: text2,
            decoration: InputDecoration(
              border: OutlineInputBorder(),


            ),
          ),
          ElevatedButton(onPressed: () {
            findMin();
            text2.text = findmax().toString();



          },
              child: Text('min')
          ),
          SizedBox(height: 10,),
          TextFormField(
            controller: text3,
            decoration: InputDecoration(
              border: OutlineInputBorder(),


            ),
          ),
          ElevatedButton(onPressed: () {
            findmax();

            text3.text = findmax().toString();
          },
              child: Text('max')
          ),
          SizedBox(height: 10,),
          TextFormField(
            controller: text4,
            decoration: InputDecoration(
              border: OutlineInputBorder(),


            ),
          ),
          ElevatedButton(onPressed: () {


          },
              child: Text('sort')
          ),

        ],
      ),
    );
  }
}