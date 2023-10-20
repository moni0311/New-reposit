
import 'package:flutter/material.dart';
class Spotify extends StatefulWidget {
  const Spotify({super.key});

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
        {
          return [
            SliverAppBar(
              backgroundColor: Colors.blueGrey,
              toolbarHeight: 380,
              centerTitle: true,
              flexibleSpace: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back,color: Colors.white,),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                          height: 45,
                          width: 280,
                          decoration: BoxDecoration(
                            color: Colors.white10,
                          ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  icon: Icon(Icons.search,color: Colors.white,),
                                  hintText: "Find in playlist",
                                    hintStyle: TextStyle(color: Colors.white)
                                ),
                              ),
                            ),

                  ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 45,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white10,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Sort",hintStyle: TextStyle(color: Colors.white)
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  Container(
                    height: 200,
                    width: 400,
                    child: Center(
                      child: Image.asset("goals/SY.png",fit: BoxFit.fill,),


                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("Yuvan Drugs",style: TextStyle(color: Colors.white,
                       fontWeight: FontWeight.bold,fontSize: 30),),
                 ),

                ],
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Fan of Little Maestro | Yuvan for Life",
                      style: TextStyle(color: Colors.white54),),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("goals/pers.png")
                        ),
                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 1),
                    child: Container(
                      height: 25,
                      width: 50,
                     decoration: BoxDecoration(

                     ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0),
                        child: Text("Gokul",style: TextStyle(color: Colors.white,
                        fontSize: 18),),
                      ),
                    ),
                  ),

                ],

              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width:40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.browse_gallery)
                        ),
                      ),
                    ),
                  ),
                  Text("37,661 likes . 23h 42min",style: TextStyle(color: Colors.white),),
                  
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  children: [
                    Icon(Icons.favorite_border_outlined),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(Icons.arrow_circle_down_rounded,size: 25,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.more_vert),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 170),
                      child: Icon(Icons.shuffle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.pause_circle,size: 45,),
                    ),
                  ],
                ),
              ),
              Container(
                height: 800,
                child: ListView.builder(
                  physics: new NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int intex) {
                    return Card(
                      color: Colors.white,
                      child: ListTile(
                        leading: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("goals/PY.png"),
                            ),
                          ),

                        ),
                        title: Text("Yedho Ondru Ennai"),
                        subtitle: Row(
                          children: [
                            Container(
                              height: 20,
                              width: 40,
                              decoration: BoxDecoration(
                              ),
                              child: Text("Lyrics",style: TextStyle(color:Colors.white,
                                  backgroundColor: Colors.black),),

                              ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Yuvan Shankar Raja"),
                            ),
                          ],
                        ),




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



