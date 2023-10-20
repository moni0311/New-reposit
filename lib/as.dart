import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Asd extends StatefulWidget {
  const Asd({super.key});

  @override
  State<Asd> createState() => _AsdState();
}

class _AsdState extends State<Asd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [



          Container(
            height: 400,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20),
                itemCount: 4,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15)),
                    child: Text("ok"),
                  );
                }),
          ),

          Container(
            height: 200,
          //  width: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,

                itemBuilder: (BuildContext context, intex)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 100,
                          width: 150,
                          color: Colors.cyan,
                          child: Text("ok"),
                        ),
                      );
                    }
            ),
          ),


          CarouselSlider.builder(
            options: CarouselOptions(
              height: 200,
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
             // onPageChanged: callbackFunction,
              scrollDirection: Axis.horizontal,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
            {
              return Container(
                height: 100,
                width: 300,
                color: Colors.cyan,
                child: Text(itemIndex.toString()),
              );
            }
          )






        ],
      ),
    );
  }
}
