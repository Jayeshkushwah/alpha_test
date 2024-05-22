import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [
                Color.fromRGBO(252, 130, 59, 1),
                Color.fromRGBO(211, 83, 7, 1),
                Color.fromRGBO(211, 83, 7, 1),
                Color.fromRGBO(211, 83, 7, 1),
              ])),
          child: Padding(
            padding: const EdgeInsets.only(top: 48),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),

                  // Top App bar
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/mingcute_location-fill.png",
                            // scale: 20,
                            height: 24,
                          ),
                          const SizedBox(width: 8),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ward 35",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "Ratan Lok Colony Indore",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/Group 2979.png",
                            height: 24,
                          ),
                          const SizedBox(width: 8),
                          Image.asset(
                            "assets/Notification.png",
                            height: 24,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 24),

                          // search bar
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: SizedBox(
                              height: 55,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: Image.asset(
                                      "assets/Search.png",
                                      scale: 20,
                                    ),
                                    fillColor: Color.fromRGBO(245, 245, 245, 1),
                                    filled: true,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    // enabled: true,
                                    hintText: "Search"),
                              ),
                            ),
                          ),
                          SizedBox(height: 16),

                          // lookign for section
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Container(
                              height: 59,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(138, 180, 2, 200),
                                border: Border.all(
                                  color: Color.fromRGBO(138, 180, 2, 10),
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Looking For",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Door Step Delivery",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromRGBO(89, 89, 89, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Image.asset(
                                    "assets/Arrow - Down 2.png",
                                    height: 24,
                                  )
                                ],
                              ),
                            ),
                          ),

                          // Category section
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 240,
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/dummy.png",
                                              height: 60,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "Rescue fuel",
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    89, 89, 89, 1),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/dummy.png",
                                              height: 60,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "Fuels",
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    89, 89, 89, 1),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/dummy.png",
                                              height: 60,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "Insurance",
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    89, 89, 89, 1),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/dummy.png",
                                              height: 60,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "Rescue fuel",
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    89, 89, 89, 1),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/dummy.png",
                                              height: 60,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "Battery",
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    89, 89, 89, 1),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/dummy.png",
                                              height: 60,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "Car Wash",
                                              style: TextStyle(
                                                color: Color.fromRGBO(
                                                    89, 89, 89, 1),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Divider(
                              color: Color.fromRGBO(138, 180, 2, 100),
                              thickness: 2,
                            ),
                          ),
                          SizedBox(height: 25),

                          // slider
                          Image.asset(
                            "assets/dummy2.png",
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 30),
                          Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(255, 243, 236, 1)),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 28),
                                Text(
                                  "Products",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 20),
                                productTile(),
                                const SizedBox(height: 12),
                                productTile(),
                                const SizedBox(height: 12),
                                productTile(),
                                const SizedBox(height: 50),
                              ],
                            ),
                          ),
                          Row(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// products tile

Widget productTile() {
  return Container(
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      children: [
        SizedBox(width: 4),
        Container(
          height: 92,
          width: 92,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "My Fuels Product",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Order Now",
                style: TextStyle(
                  color: const Color.fromRGBO(255, 138, 13, 1),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
