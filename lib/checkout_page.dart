import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_prj/components/my_button.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
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
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 45.0, left: 20),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 45.0, left: 85),
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
          Card(
            color: Colors.white,
           // elevation: 3,
          //  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),

            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: const EdgeInsets.only(right: 10),
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
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Sunfuel - Radisson Blu..",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Row(
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
                          const SizedBox(height: 7),
                          Row(
                            children: [
                              const Text(
                                "1 Km away",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                              const Spacer(),
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
                                child: const Row(
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
          Container(
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 225),
                  child: Text(
                    "Price Detail",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "MRP (1 item)",
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      Text(
                        "120.00",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery free",
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      Text(
                        "0",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Discount",
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      Text(
                        "80",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),

                Padding(
                  padding: EdgeInsets.only(left: 15, right: 10,top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Amount",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "\$120.00",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 5),
              ],
            ),
          ),
          const SizedBox(height: 280,),
          Container(
            alignment: Alignment.bottomCenter,
            width: 330,
            child:const MyButton(text: 'Checkout',),),
        ],
      ),
    );
  }
}