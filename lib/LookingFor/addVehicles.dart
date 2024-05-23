import 'package:flutter/material.dart';
import 'package:test_prj/LookingFor/EvVehicle.dart';
import 'package:test_prj/components/my_button.dart';

class AddVehicles extends StatefulWidget {
  const AddVehicles({super.key});

  @override
  State<AddVehicles> createState() => _AddVehiclesState();
}

class _AddVehiclesState extends State<AddVehicles> {
  String? selectedValue;
  final List<String> items = [
    "Four Wheeler",
    "Heavy Vehicle",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      'Add Vehicles',
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
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButton<String>(
                        value: selectedValue,
                        hint: Text('Vehicles Type'),
                        isExpanded: true,
                        underline: SizedBox(),
                        items: items.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            selectedValue = newValue;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 53,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Asset Capacity/Power (eg: 120kva)',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 340,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                child: MyButton(text: 'Next'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EvVehicle()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
