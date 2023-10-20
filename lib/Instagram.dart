import 'package:flutter/material.dart';
import 'package:untitled1/Amazon.dart';
class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: GestureDetector(
          onTap: (){
            setState(() {
              Navigator.push(
                  context,
              MaterialPageRoute(builder: (context)=> const AMs()),
              );
            });
          },


         child: Icon(Icons.arrow_back),
        ),

        title: Text("speakerpettitamil"),
        actions: [
          Icon(Icons.notifications_active_outlined),
          Icon(Icons.more_vert),
        ],
      ),

     body: DefaultTabController(
       length: 3,
       child: Stack(
         children: [
           NestedScrollView(
               headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                     return [
                     SliverAppBar(


                       toolbarHeight: 370,
                       pinned: true,
                       flexibleSpace: Column(
                         children: [
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                   height: 80,
                                   width: 80,
                                   decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                     image: DecorationImage(
                                       image: AssetImage("goals/gr.png"),
                                       fit: BoxFit.fill,
                                     ),
                                   ),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 40),
                                 child: Column(
                                   children: [
                                     Text('149',style: TextStyle(
                                         fontWeight: FontWeight.bold),),
                                     Text('posts')
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 40),
                                 child: Column(
                                   children: [
                                     Text("24.1k",style: TextStyle(
                                       fontWeight: FontWeight.bold
                                     ),),
                                     Text("Followers")
                                   ],
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.only(left: 40),
                                 child: Column(
                                   children: [
                                     Text("24",style: TextStyle(
                                         fontWeight: FontWeight.bold),),
                                     Text("Following")
                                   ],
                                 ),
                               ),
                             ],
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 280),
                             child: Text('Speaker petti',style: TextStyle(
                               fontWeight: FontWeight.bold
                             ),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 270),
                             child: Text("Motive Speaker"),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 16),
                             child: Row(
                               children: [
                                 Text('DM for Paid Promotion'),

                               ],
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 265),
                             child: Text("Cinema updates"),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 9),
                             child: Row(
                               children: [
                                 Icon(Icons.attach_file,color: Colors.indigoAccent,),
                                 Text("youtube.com/@speakerpettiofficial",style:
                                   TextStyle(color: Colors.indigoAccent),)

                               ],
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 13,top: 6),
                             child: Row(
                               children: [
                                 Container(
                                   height: 40,
                                   width: 150,
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(10),
                                     color: Colors.black12

                                   ),
                                   child: Padding(
                                     padding: const EdgeInsets.only(left: 35,top: 8),
                                     child: Text("Following"),
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.only(left: 13,top: 2),
                                   child: Container(
                                     height: 40,
                                     width: 150,
                                     decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       color: Colors.black12

                                     ),
                                     child: Padding(
                                       padding: const EdgeInsets.only(left: 36,top: 10),
                                       child: Text("Message"),
                                     ),
                                   ),
                                 ),
                                 Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Container(
                                     height: 38,
                                       width: 50,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         color: Colors.black12
                                       ),
                                       child: Icon(Icons.person_add_alt)),
                                 ),

                               ],
                             ),
                           ),
                           Container(
                             height: 100,
                             width: 380,

                             child: ListView.builder(
                                 scrollDirection: Axis.horizontal,
                                 itemCount: 6,
                                 itemBuilder:(BuildContext context, intex)
                                 {
                                   return
                                     Container(
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
                                                     image: AssetImage("goals/vd.png"),
                                                     fit: BoxFit.fill,
                                                   ),
                                                 ),

                                               ),
                                               Text("Memez"),


                                             ],
                                           ),
                                     );
                                 }
                                 ),
                           ),
                         ],
                     ),
                       bottom: TabBar(
                         tabs: [
                           Padding(
                             padding: const EdgeInsets.only(right: 20),
                             child: Tab(icon: Icon(Icons.grid_on),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(right: 20),
                             child: Tab(icon: Icon(Icons.video_camera_back_outlined),),
                           ),
                           Tab(icon:Icon(Icons.perm_contact_cal_rounded),)
                         ],
                       ),
                     ),

                     ];
                   }, body: TabBarView(children: [
             Container(
               height: 500,
               child: GridView.builder(
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 3,
                   childAspectRatio: 2/ 2,


                   crossAxisSpacing: 1,
                     mainAxisSpacing: 1,
                   mainAxisExtent: 120,
                 ),
                 itemCount: 9,
                 itemBuilder: (BuildContext ctx, index) {
                   return
                     Container(
                         height: 80,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15),

                         ),
                         child: Column(
                           children: [
                             Container(
                               height: 120,
                               width: 150,
                               decoration: BoxDecoration(
                                 shape: BoxShape.rectangle,
                                 image: DecorationImage(
                                   image: AssetImage("goals/da.png"),
                                   fit: BoxFit.fill,
                                 ),


                               ),



                             ),

                           ],
                         ),
                       );




                 },




               ),


             ),
             Container(
               height: 490,
               child: GridView.builder(
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 3,

                   childAspectRatio: 1.2/ 2,

                   crossAxisSpacing: 10,
                   mainAxisSpacing: 1,
                   mainAxisExtent: 150,
                 ),
                 itemCount: 9,
                 itemBuilder: (BuildContext ctx, index) {
                   return
                     Container(
                       height: 80,
                       alignment: Alignment.center,
                       decoration: BoxDecoration(
                         shape: BoxShape.rectangle,
                         borderRadius: BorderRadius.circular(15),

                       ),
                       child: Column(
                         children: [
                           Container(
                             height: 120,
                             width: 150,
                             decoration: BoxDecoration(
                               image: DecorationImage(
                                 image: AssetImage("goals/ka.png"),
                                 fit: BoxFit.fill,
                               ),


                             ),



                           ),


                         ],
                       ),
                     );




                 },




               ),


             ),
           ],),

     ),
       ]
     ),
    ),
    );

}
}
