import 'package:flutter/material.dart';
import 'package:test_prj/authPages/login_page.dart';
import 'package:test_prj/LookingFor/ForLooking.dart';
import 'package:test_prj/authPages/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LookingForCompany(),
    );
  }
}
