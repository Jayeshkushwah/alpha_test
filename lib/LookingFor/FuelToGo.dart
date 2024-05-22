import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:pinput/pinput.dart';
import 'package:test_prj/LookingFor/addVehicles.dart';
import 'package:test_prj/components/my_button.dart';
import 'package:test_prj/components/my_textfield.dart';

class FuelToGo extends StatefulWidget {
  const FuelToGo({super.key});

  @override
  State<FuelToGo> createState() => _FuelToGoState();
}

class _FuelToGoState extends State<FuelToGo> {
  int selected = 0;

  Widget customRadio(String text, int index) {
    return OutlinedButton(
      onPressed: () {
        setState(() {
          selected = index;
        });
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(
            color: (selected == index) ? Colors.black : Colors.blueGrey,
          ),
        ),
      ),
      style: OutlinedButton.styleFrom(
        minimumSize: Size(280, 50), // Set a fixed width and height
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(10),
        ),
        side: BorderSide(
          color: (selected == index) ? Colors.black : Colors.yellow,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 130,
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
                  padding: const EdgeInsets.only(top: 45.0, left: 100),
                  child: Text(
                    'Looking For',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 45,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1, color: Colors.grey.shade100),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Door Step Delivery",
                    ),
                  ),
                ),
                Container(
                  height: 45,
                  width: 160,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(138, 180, 2, 1),
                        Color.fromRGBO(59, 120, 31, 1),
                      ],
                    ),
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.grey.shade100),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Fuel to Go",
                    style: TextStyle(color: Color.fromARGB(255, 1, 1, 1)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                customRadio("DIESEL", 1),
                SizedBox(
                  height: 20,
                ),
                customRadio("EV", 2),
                SizedBox(
                  height: 20,
                ),
                customRadio("DIESEL", 3),
                SizedBox(
                  height: 20,
                ),
                customRadio("EV", 4),
              ],
            ),
          ),
          SizedBox(
            height: 130,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              child: MyButton(text: 'Next'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddVehicles()));
              },
            ),
          )
        ],
      ),
    );
  }
}
