import 'package:flutter/material.dart';
import 'package:test_prj/add_fuel_quantity.dart';
import 'package:test_prj/payment_form.dart';
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
      home: VehicleNumber(),
    );
  }
}
