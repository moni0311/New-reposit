import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Newhot extends StatefulWidget {
  const Newhot({super.key});

  @override
  State<Newhot> createState() => _NewhotState();
}

class _NewhotState extends State<Newhot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("New and Trending",style: TextStyle(
              fontSize: 25
            ),),
          ),
         Container(
           height: 200,
           width: 300,
           child: CachedNetworkImage(
             imageUrl:"https://prod-ripcut-delivery.disney-plus.net/v1/variant/star/CDFA92616E4E77BB036395C4DAB08CFF3562F91927C5E7D1065CC25BA3F594AA/scale?width=1200&aspectRatio=1.78&format=jpeg"
           ),
         )

        ],
      ),
                                                                                                        
    );
  }
}
