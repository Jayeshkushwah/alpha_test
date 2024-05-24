import 'package:flutter/material.dart';
import 'package:test_prj/card_item_samples.dart';

class ChargingStations extends StatelessWidget {
  const ChargingStations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
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
                    bottomRight: Radius.circular(23))),
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
                  padding: EdgeInsets.only(top: 45.0, left: 65),
                  child: Text(
                    'Charging Station',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.only(top: 5),
                      children: [
                        const CartItemSamples(),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          padding: const EdgeInsets.all(10),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
