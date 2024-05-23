import 'package:flutter/material.dart';
import 'package:test_prj/charging_stations.dart';
import 'package:test_prj/checkout_page.dart';
import 'package:test_prj/pay_success_page.dart';
import 'package:test_prj/payment_page.dart';
import 'package:test_prj/vehicle_number.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentScreen(),
    );
  }
}
