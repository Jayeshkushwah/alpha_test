import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_prj/LookingFor/SelectAddress.dart';
import 'package:test_prj/components/my_button.dart';

class ChargingStations extends StatefulWidget {
  const ChargingStations({super.key});

  @override
  State<ChargingStations> createState() => _ChargingStationsState();
}

class _ChargingStationsState extends State<ChargingStations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  Color.fromRGBO(211, 83, 7, 1),
                  Color.fromRGBO(252, 130, 59, 1),
                  Color.fromRGBO(252, 130, 59, 1),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(23),
                bottomRight: Radius.circular(23),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45.0, left: 20),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 45.0, left: 85),
                  child: Text(
                    'CheckOut',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            color: Colors.white,
            elevation: 1,
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://media.istockphoto.com/id/1330589502/photo/electric-vehicle-charging-station.jpg?s=1024x1024&w=is&k=20&c=gwve61BLBc9djE8P9Qp-2KSxS-ehZtvlcTW6AKy4DOA=',
                        height: 130,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sunfuel - Radisson Blu..",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              SizedBox(width: 5),
                              Text(
                                "12, ring Road",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7),
                          Row(
                            children: [
                              Text(
                                "1 Km away",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 10,
                                    )
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      CupertinoIcons.star_fill,
                                      size: 18,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      '2.2',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 270.0),
            child: Text(
              'Details',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                Text(
                  "Lorem Ipsum is simply dummy text of the  printing\n and typesetting industry. Lorem Ipsum hass been\n the industry's standard dummy text ever since\n the 1500s",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset("assets/image.png"),
              Image.asset("assets/detailsicon.png"),
            ],
          ),
        ],
      ),
    );
  }
}




// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// class ChargingStationDetails extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(



//         child: Column(
//           children: [
//             Container(
//               height: 100,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.center,
//                   colors: [
//                     Color.fromRGBO(211, 83, 7, 1),
//                     Color.fromRGBO(252, 130, 59, 1),
//                     Color.fromRGBO(252, 130, 59, 1),
//                   ],
//                 ),
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(23),
//                   bottomRight: Radius.circular(23),
//                 ),
//               ),
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 45.0, left: 20),
//                     child: Icon(
//                       Icons.arrow_back,
//                       color: Colors.white,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 45.0, left: 30),
//                     child: Text(
//                       'Charging Station Details',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Card(
//               color: Colors.white,
//              // elevation: 3,
//               //  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),

//               child: Padding(
//                 padding: EdgeInsets.all(4),
//                 child: Row(
//                   children: [
//                     Container(
//                       height: 100,
//                       width: 100,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       margin: EdgeInsets.only(right: 10),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Image.network(
//                           'https://media.istockphoto.com/id/1330589502/photo/electric-vehicle-charging-station.jpg?s=1024x1024&w=is&k=20&c=gwve61BLBc9djE8P9Qp-2KSxS-ehZtvlcTW6AKy4DOA=',
//                           height: 130,
//                           width: 100,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(vertical: 10),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Sunfuel - Radisson Blu..",
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             SizedBox(height: 8),
//                             Row(
//                               children: [
//                                 Icon(Icons.location_on),
//                                 SizedBox(width: 5),
//                                 Text(
//                                   "12, ring Road",
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.black54,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 7),
//                             Row(
//                               children: [
//                                 Text(
//                                   "1 Km away",
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     color: Colors.black54,
//                                   ),
//                                 ),
//                                 Spacer(),
//                                 Container(
//                                   height: 30,
//                                   width: 70,
//                                   decoration: BoxDecoration(
//                                     color: Colors.black,
//                                     borderRadius: BorderRadius.circular(5),
//                                     boxShadow: [
//                                       BoxShadow(
//                                         color: Colors.grey.withOpacity(0.1),
//                                         spreadRadius: 1,
//                                         blurRadius: 10,
//                                       )
//                                     ],
//                                   ),
//                                   child: Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Icon(
//                                         CupertinoIcons.star_fill,
//                                         size: 18,
//                                         color: Colors.orange,
//                                       ),
//                                       SizedBox(width: 5),
//                                       Text(
//                                         '2.2',
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10, right: 270),
//                     child: Text(
//                       "Details",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15, right: 10),
//                     child: Text(
//                       "Lorem Ipsum is simply dummy text of the "
//                           "printing and typesetting industry. Lorem Ipsum has "
//                           "been the industry's standard dummy text ever since the 1500s",
//                       style: TextStyle(fontSize: 14, color: Colors.black54),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
// Row(
//   children: [
//     Image.asset("assets/detailsicon2.png"),

//     Padding(
//       padding: const EdgeInsets.only(left:10),
//       child: Image.asset("assets/detailsicon.png"),
//     ),
//   ],
// ),
//             Padding(
//               padding: const EdgeInsets.only(top: 10, right: 260),
//               child: Text(
//                 "Reviews",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(height: 5),
//             Column(
//               children: [
//                 Container(
//                   height: 160,
//                   width: 350,
//                   color: Colors.blue,
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 200,
//                         child:Column(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(right:100),
//                               child: Text("2.2",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
//                             ),
//                               Padding(
//                                 padding: const EdgeInsets.only(),
//                                 child: RatingBar.builder(
//                                   initialRating: 3,
//                                   minRating: 1,
//                                   direction: Axis.horizontal,

//                                   itemCount: 5,
//                                  // itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
//                                   itemBuilder: (context, _) => Icon(
//                                     Icons.star,
//                                     color: Colors.amber,

//                                   ),
//                                   onRatingUpdate: (rating) {
//                                     print(rating);
//                                   },
//                                 ),
//                               ),
//                             SizedBox(height: 5,),
//                             Padding(
//                               padding: const EdgeInsets.only(right:20),
//                               child: Text("14,575 Global Rating",style: TextStyle(fontSize:17,color: Colors.black54),),
//                             ),



//                           ],


//                       ),


//                       ),
//                       VerticalDivider(
//                         thickness: 2,
//                         color: Colors.black26,
//                         indent: 15,
//                         endIndent: 10,
//                       ),
//                       Container(
//                         width: 130,
//                         color: Colors.yellow,
//                       )
//                     ],
//                   ),

//                 ),
//               ],
//             ),
//             SizedBox(height: 20,),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               child: Padding(
//                 padding: EdgeInsets.all(1),
//                 child: Row(
//                   children: [
//                     Container(
//                       height: 60,
//                       width: 60,
//                       margin: EdgeInsets.only(right: 10),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(50),
//                         child: Image.network(
//                           'https://media.istockphoto.com/id/1330589502/photo/electric-vehicle-charging-station.jpg?s=1024x1024&w=is&k=20&c=gwve61BLBc9djE8P9Qp-2KSxS-ehZtvlcTW6AKy4DOA=',
//                           height: 40,
//                           width: 40,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(vertical: 0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: [
//                                 Text(
//                                   "Wade Warren",
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 30),
//                                   child: Text(
//                                     "02 Jun 23, 04:55",
//                                     style: TextStyle(
//                                       fontSize: 15,
//                                       color: Colors.black54,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),

//                            // SizedBox(height: 8),
//                             RatingBar.builder(
//                               initialRating: 3,
//                               minRating: 1,
//                               direction: Axis.horizontal,

//                               itemCount: 5,
//                               itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
//                               itemBuilder: (context, _) => Icon(
//                                 Icons.star,
//                                 color: Colors.amber,

//                               ),
//                               onRatingUpdate: (rating) {
//                                 print(rating);
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 5),
//             Padding(
//               padding: const EdgeInsets.only(left: 15, right: 10),
//               child: Text(
//                 "Lorem Ipsum is simply dummy text of the "
//                     "printing and typesetting industry.",
//                 style: TextStyle(fontSize: 14, color: Colors.black54),
//               ),
//             ),
//             SizedBox(height: 5),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               child: Padding(
//                 padding: EdgeInsets.all(1),
//                 child: Row(
//                   children: [
//                     Container(
//                       height: 60,
//                       width: 60,
//                       margin: EdgeInsets.only(right: 10),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(50),
//                         child: Image.network(
//                           'https://media.istockphoto.com/id/1330589502/photo/electric-vehicle-charging-station.jpg?s=1024x1024&w=is&k=20&c=gwve61BLBc9djE8P9Qp-2KSxS-ehZtvlcTW6AKy4DOA=',
//                           height: 40,
//                           width: 40,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(vertical: 0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: [
//                                 Text(
//                                   "Wade Warren",
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 30),
//                                   child: Text(
//                                     "02 Jun 23, 04:55",
//                                     style: TextStyle(
//                                       fontSize: 15,
//                                       color: Colors.black54,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),

//                             // SizedBox(height: 8),
//                             RatingBar.builder(
//                               initialRating: 3,
//                               minRating: 1,
//                               direction: Axis.horizontal,

//                               itemCount: 5,
//                               itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
//                               itemBuilder: (context, _) => Icon(
//                                 Icons.star,
//                                 color: Colors.amber,

//                               ),
//                               onRatingUpdate: (rating) {
//                                 print(rating);
//                               },
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(height: 5),
//             Padding(
//               padding: const EdgeInsets.only(left: 15, right: 10),
//               child: Text(
//                 "Lorem Ipsum is simply dummy text of the "
//                     "printing and typesetting industry.",
//                 style: TextStyle(fontSize: 14, color: Colors.black54),
//               ),
//             ),
//             SizedBox(height: 20,),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextButton(

//                 onPressed: () {
//                   // Add your send button functionality here
//                 },

//                 style: TextButton.styleFrom(
//                   backgroundColor: Colors.green,
//                   padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),

//                   ),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   // Adjust the row size to fit the content
//                   children: [
//                     // Add some space between the icon and the text
//                     Padding(
//                       padding: const EdgeInsets.only(left:55),
//                       child: Text(
//                         'Shedule for door steps',
//                         style: TextStyle(color: Colors.white, fontSize: 18),
//                       ),
//                     ),
//                     SizedBox(width: 80),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),

//     );
//   }
// }