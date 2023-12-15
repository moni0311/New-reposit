import 'package:flutter/material.dart';
import 'package:untitled1/CRM/profile%20CRM.dart';
import 'package:untitled1/colors.dart';

// import '../product.dart';
import 'model2.dart';
class homee extends StatefulWidget {
  const homee({super.key});

  @override
  State<homee> createState() => _homeeState();
}

class _homeeState extends State<homee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [dd,gg]
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(elevation: 20,
                child: TextFormField(

                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",hintStyle: TextStyle(fontSize: 20),
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.search),
                    ),

                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child:GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>pro()));
                      },
                      child: ListTile(
                        leading: Icon(Icons.person,color: Colors.black,),
                        title: Text("Add Customer ID",style: TextStyle(
                            color: Colors.black54,fontSize: 20),),
                        trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black),
                      ),
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      Expanded(
                          child: Divider(
                            height: 1,
                          )
                      ),



                      Expanded(
                          child: Divider()
                      ),
                    ]
                ),
              ),
              ListTile(
                title: Container(
                  height: 100,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey,width: 3.0),
                      borderRadius:BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.black,
                          offset: Offset(0.5,1),
                        ),
                      ]

                  ),

                ),


              ),

              Container(
                height: 800,
                child: ListView.builder(
                    physics: new NeverScrollableScrollPhysics(),
                    itemCount: userDetails.length,
                    itemBuilder: (BuildContext context, int index) {

                      return ListTile(
                        title: Container(
                          height: 100,
                          width: 400,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey,width: 3.0),
                              borderRadius:BorderRadius.all(Radius.circular(10.0)),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: Colors.black,
                                  offset: Offset(0.5,1),
                                ),
                              ]

                          ),
                          child: Text(userDetails[index].name),

                        ),


                      );


                    }

                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
