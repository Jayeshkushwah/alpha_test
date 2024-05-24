import 'package:flutter/material.dart';
import 'package:test_prj/components/my_button.dart';
import 'package:test_prj/components/my_hinttext_field.dart';

class VehicleNumber extends StatefulWidget {
  const VehicleNumber({super.key});

  @override
  State<VehicleNumber> createState() => _AddFuelQuantityState();
}

class _AddFuelQuantityState extends State<VehicleNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open Bottom Sheet'),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  padding: EdgeInsets.zero,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Enter Your Vehicle Number',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const MyHintTextField(
                            hintText: Text(
                          "Vehicle Number",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w500),
                        )),
                        const SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: const MyButton(
                              text: "Submit",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
