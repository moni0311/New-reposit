import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled1/Amazon.dart';


import 'package:untitled1/botnavi.dart';



List<String> liss=<String>['1','2','3','4',];



class PD extends StatefulWidget {
  const PD({super.key});

  @override
  State<PD> createState() => _PDState();
}



class _PDState extends State<PD> {




  var dropdownValue= liss.first;

  get items => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          leading: GestureDetector(
            onTap: (){
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AMs()),
                );
              });
            },
              child: Icon(Icons.arrow_back)),
          title: Padding(
            padding: const EdgeInsets.only(top: 01),
            child: Container(
              height: 40,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white,
              ),

              child: Padding(
                padding: const EdgeInsets.only(top: 5,),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(bottom: 17),
                        child: Icon(Icons.search),
                      ),
                      hintText: 'Search Amazon.in',
                      suffixIcon: Container(
                        height: 40,
                        width: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.qr_code),
                            Icon(Icons.mic),

                          ],
                        ),
                      )


                  ),

                ),
              ),
            ),
          )

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 5),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Visit the Lavie Sport store',
                      style: TextStyle(color: Colors.teal, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 7, left: 40),
                    child: Container(

                      height: 10,
                      width: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 20),
                        child: RatingBar.builder(
                          initialRating: 3,

                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20,
                          itemBuilder: (context, _) =>
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),


                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 10),
                    child: Text('8,587'),
                  )
                ],
              ),

            ),

          
            
            
            Container(
                height: 20,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                      "Lavi Sport Lino Large Size 63cms Wheel Duffle Bag ForLavi Sport Lino Large Size 63cms Wheel Duffle Bag For",
                  overflow: TextOverflow.ellipsis,
                  ),
                )
            ),




            Stack(
              children: [
                CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 400,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1.0 / 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: false,
                      enlargeFactor: 20,
                      // onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    ), itemCount: 5,
                    itemBuilder: (BuildContext context, int itemIndex,
                        int pageViewIndex) {
                      return
                        Container(
                          height: 400,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("goals/bug.jpeg"),
                              fit: BoxFit.fill,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                offset: const Offset(0, 0),
                                blurRadius: 9.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                        );
                    }


                ),
                Padding(
                  padding: const EdgeInsets.only(left: 330, top: 10),
                  child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        shape: BoxShape.circle,
                      ),
                      child: Positioned(child: Icon(Icons.share, size: 20,),
                        right: 50,
                        bottom: 350,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 390, left: 7),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      shape: BoxShape.circle,
                    ),
                    child: Positioned(
                      child: Icon(Icons.favorite_border_outlined, size: 25,),
                      top: 377,

                    ),
                  ),
                ),


              ],


            ),
            Padding(
              padding: const EdgeInsets.only(right: 205, top: 40,),
              child: Container(
                height: 30,
                width: 170,
                child: Text(
                  "Limited time deal", style: TextStyle(fontSize: 19),),
                color: Colors.greenAccent,
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 160),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text("-73% ",
                      style: TextStyle(color: Colors.red, fontSize: 30),),
                  ),
                  Icon(Icons.currency_rupee_outlined),
                  Text("1,049", style: TextStyle(fontSize: 30),)

                ],


              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text("M.R.P.:", style: TextStyle(fontSize: 20),),
                ),
                Text("3,895", style: TextStyle(
                    decoration: TextDecoration.lineThrough, fontSize: 20),)
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text("FREE delivery",
                    style: TextStyle(color: Colors.teal, fontSize: 18,),),
                ),
                Text("Saturday,23 September.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                Text("Details",
                  style: TextStyle(color: Colors.teal, fontSize: 15),),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10,left: 6),
                  child: Text(
                    "Or fastest delivery", style: TextStyle(fontSize: 18),),
                ),
                Text("Tomorrow,22 September.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),

              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text("Order within ", style: TextStyle(fontSize: 18),),
                ),
                Text("9 hrs 22 mins.", style: TextStyle(color: Colors.green,
                ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Text("In stock",style: TextStyle(fontSize: 20,color: Colors.green),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Qty"),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue=value!;
                    });
                },
                  items: liss.map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(
                      value: value, child: Text(value),
                    );
                  }).toList(),
                ),
            ],


            ),
            Container(
              height: 50,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amberAccent,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:120,top: 5),
                  child: Text("Add to Card",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>const Botnavi())
                      );
                    });
                  },
                  child: Container(
                      height:50,
                      width:380,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.orange,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left:130,top: 5),
                        child: Text("Buy now",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),

                      )),
                ),
              ),
            ],

        ),
    ),
    );



  }
  }
