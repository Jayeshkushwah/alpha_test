import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemSamples extends StatelessWidget {
  const CartItemSamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < 3; i++)
          Card(
            color: Colors.white,
            // Add elevation to give it a shadow effect
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          10), // Ensure the image corners are rounded
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
                      padding: const EdgeInsets.symmetric(vertical: 2),
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
                          const Row(
                            children: [
                              Icon(Icons.location_on),
                              SizedBox(width: 5),
                              Text(
                                "12, Ring Road",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
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
                                      color: Colors.grey.withOpacity(0.5),
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
      ],
    );
  }
}
