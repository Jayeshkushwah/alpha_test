import 'package:flutter/material.dart';

class OrderPlaced extends StatefulWidget {
  const OrderPlaced({super.key});

  @override
  State<OrderPlaced> createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.green],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 120),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/checkbox.png'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  height: 200,
                  width: 350,
                  alignment: Alignment.center,
                  color: Colors
                      .transparent, // Optional overlay color with transparency
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Order Placed Successfully",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 5), // Spacing between texts
                      Padding(
                        padding: EdgeInsets.only(left: 50),
                        child: Row(children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text(
                            "300 Points added to your",
                            style: TextStyle(color: Colors.white, fontSize: 19),
                            textAlign: TextAlign.center,
                          ),
                        ]),
                      ),
                      SizedBox(height: 5), // Spacing between texts
                      Text(
                        "My Fuels Card",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
