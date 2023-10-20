

import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:untitled1/botnavi.dart';
import 'package:untitled1/product.dart';
class AMs extends StatefulWidget {
  const AMs({super.key});

  @override
  State<AMs> createState() => _AMsState();
}

class _AMsState extends State<AMs> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Container(
          height: 50,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            
            borderRadius: BorderRadius.circular(15)
          ),

          child: SizedBox(
            width: 100,
            height: 300,
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Amazon in',
                  suffixIcon: Container(
                    height: 10,
                    width: 80,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.qr_code,size: 20,),
                          Icon(Icons.mic,size: 20,)
                        ],
                      ),

                    ),
                  ),




            ),
        ),
          ),
      ),



    ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent,



                  ),
                  child: Padding( padding: const EdgeInsets.only(top: 10),

                    child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(bottom: 250),
                              child: Icon(Icons.location_on,size: 25,),
                          ),

                          hintText: 'Deliver to Monisha-Coimbatore 641017',suffixStyle: TextStyle(fontSize: 7),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(bottom: 50),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 70),
                              child: Icon(Icons.arrow_drop_down),
                            ),
                          ),
                        ),
                        ),

                      ),
                    ),
                Container(
                  height: 100,
                  width: 350,

                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder:(BuildContext context, intex)
                      {
                        return
                          Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const PD()),
                                );

                              });
                            },
                            child: Container(
                              height: 10,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 250,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,


                                      image: DecorationImage(
                                        image: AssetImage("goals/pin.jpeg"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),

                                  ),
                                  Text("New"),
                                ],
                              ),
                            ),
                          ),
                          );
                      }
                      ),
                ),
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 300,
                    aspectRatio: 16/9,
                    viewportFraction: 1.1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage:true,
                    enlargeFactor: 0.15,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                  ),
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index, int)  {

                    return GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => const PD()),
                          );


                        });
                      },
                      child: Container(

                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("goals/bb.jpg"),fit: BoxFit.fill,
                            )
                        ),

                      ),
                    );

                  },
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (BuildContext context, intex)
                          {
                            return
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const PD()),
                                    );
                                  });
                                },
                                child: Container(
                                  height: 250,
                                  width: 150,
                                  decoration: BoxDecoration(


                                    image: DecorationImage(
                                      image: AssetImage("goals/sal.jpeg"),

                                    ),
                                  ),
                                ),
                              );
                          }
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Deals for you",style: TextStyle(fontSize: 30),),

                  ],
                ),


                      Container(
                        height: 450,
                        child: GridView.builder(
                            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 300,
                                childAspectRatio: 1.6/ 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 5),
                            itemCount: 4,
                            physics: new NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext ctx, index) {
                              return

                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const PD()),
                                        );
                                      });
                      },
                                    child: Container(
                                      height: 80,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),

                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 150,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage("goals/ba.png"),
                                                fit: BoxFit.fill,
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.greenAccent,
                                                  offset: const Offset(0, 0),
                                                  blurRadius: 9.0,
                                                  spreadRadius: 1.0,
                                                ),
                                              ],

                                            ),



                                          ),
                                          Text("Hurry up"),

                                        ],
                                      ),
                                    ),
                                  );



                            },




    ),


                      ),

                            ],
    ),
          ),
    ),
    );




















































    
  }
}



        

        





