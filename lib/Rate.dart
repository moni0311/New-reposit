// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:untitled1/main.dart';
// class AD extends StatelessWidget {
//   const AD({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 400,
//               width: 500,
//               decoration: BoxDecoration(
//                 border: Border.all(),
//               ),
//               child: Row(
//                 children: [
//                      Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           height: 100,
//                           width: 100,
//                           decoration: BoxDecoration(
//                             border: Border.all(),
//                           ),
//                           child: Column(
//                             children: [
//                               Image.asset("goals/as.png"),
//                               Text("WELCOME"),
//
//                             ],
//                           ),
//
//                         ),
//                       ),
//
//                     ),
//
//                       Column(
//                         children: [
//                           Center(child: Text("Ab")),
//
//                             RatingBar.builder(
//                                   initialRating: 3,
//                                   minRating: 2,
//                                   direction: Axis.horizontal,
//                                   allowHalfRating: true,
//                                   itemCount: 5,
//                                   itemPadding: EdgeInsets.symmetric(horizontal: 4.0 ),
//                                   itemBuilder: (context,_)=> Icon(
//                                     Icons.star,
//                                     color: Colors.amber,
//
//
//                                   ),
//                                   onRatingUpdate: (rating) {
//                                     print(rating) {
//
//                                     };
//                                   }
//
//
//                               ),
//
//
//                         ],
//
//                       ),
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//                   ],
//
//               ),
//
//             ),
//
//
//           ),
//        Row(
//          children: [
//            Container(
//                height: 100,
//                width: 100,
//                decoration: BoxDecoration(
//                  border: Border.all(),
//                  image: DecorationImage(
//                    image: AssetImage("goals/as.png"),
//                  ),
//                ),
//              ),
//
//            Expanded(child: Center(child: Text("hard work,preserverance")),
//                ),
//            Container(
//              height: 100,
//              width: 100,
//              decoration: BoxDecoration(
//                border: Border.all(),
//                image: DecorationImage(
//                  image: AssetImage("goals/as.png"),
//                )
//              ),
//            )
//          ],
//
//        )
//
//
//
//         ],
//       ),
//     );
//   }
// }
