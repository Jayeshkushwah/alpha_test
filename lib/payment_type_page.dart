import 'package:flutter/material.dart';
import 'package:test_prj/components/my_button.dart';

class PaymentType extends StatefulWidget {
  const PaymentType({super.key});

  @override
  State<PaymentType> createState() => _PaymentTypeState();
}

class _PaymentTypeState extends State<PaymentType> {
  int _type = 1;

  void _handleRadio(Object? e) => setState(() {
        _type = e as int;
      });

  @override
  void initState() {
    super.initState();
  }

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
                bottomRight: Radius.circular(23),
              ),
            ),
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
                  padding: EdgeInsets.only(top: 45.0, left: 80),
                  child: Text(
                    'Payment Type',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, right: 100),
            child: Text(
              'Select payment method',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
                width: 325,
                height: 55,
                decoration: BoxDecoration(
                    border: _type == 1
                        ? Border.all(width: 1, color: Colors.black)
                        : Border.all(width: 0.3, color: Colors.grey)),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Image.asset(
                          "assets/visa.jpg",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Visa",
                          style: _type == 1
                              ? const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)
                              : const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 128),
                      child: Radio(
                        value: 1,
                        groupValue: _type,
                        onChanged: _handleRadio,
                        activeColor: Colors.orange,
                      ),
                    ),
                  ],
                ))),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
                width: 325,
                height: 55,
                decoration: BoxDecoration(
                    border: _type == 2
                        ? Border.all(width: 1, color: Colors.black)
                        : Border.all(width: 0.3, color: Colors.grey)),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Image.asset(
                          "assets/phonepay.jpg",
                          height: 50,
                          width: 50,
                        ),
                      ),
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Phone Pay",
                          style: _type == 2
                              ? const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)
                              : const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: Radio(
                        value: 2,
                        groupValue: _type,
                        onChanged: _handleRadio,
                        activeColor: Colors.orange,
                      ),
                    ),
                  ],
                ))),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                width: 325,
                height: 55,
                decoration: BoxDecoration(
                    border: _type == 3
                        ? Border.all(width: 1, color: Colors.black)
                        : Border.all(width: 0.3, color: Colors.grey)),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Image.asset(
                            "assets/upi.jpg",
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text("UPI Payment",
                              style: _type == 3
                                  ? const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                  : const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 106),
                          child: Radio(
                            value: 3,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: Colors.orange,
                          ),
                        ),
                      ],
                    )
                  ],
                )),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                width: 325,
                height: 55,
                decoration: BoxDecoration(
                    border: _type == 4
                        ? Border.all(width: 1, color: Colors.black)
                        : Border.all(width: 0.3, color: Colors.grey)),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            "assets/google.jpg",
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Text("Google Pay",
                              style: _type == 4
                                  ? const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                  : const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 115),
                          child: Radio(
                            value: 4,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: Colors.orange,
                          ),
                        ),
                      ],
                    )
                  ],
                )),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                width: 325,
                height: 55,
                decoration: BoxDecoration(
                    border: _type == 5
                        ? Border.all(width: 1, color: Colors.black)
                        : Border.all(width: 0.3, color: Colors.grey)),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            "assets/pay_station.jpg",
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 33),
                          child: Text("Pay at Station",
                              style: _type == 5
                                  ? const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                  : const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Radio(
                            value: 5,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: Colors.orange,
                          ),
                        ),
                      ],
                    )
                  ],
                )),
              )),
          Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                width: 325,
                height: 55,
                decoration: BoxDecoration(
                    border: _type == 6
                        ? Border.all(width: 1, color: Colors.black)
                        : Border.all(width: 0.3, color: Colors.grey)),
                child: Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(
                            "assets/pay_station.jpg",
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 26),
                          child: Text("Buy now pay later(simpl, ama..)",
                              style: _type == 6
                                  ? const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)
                                  : const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey,
                                    )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Radio(
                            value: 6,
                            groupValue: _type,
                            onChanged: _handleRadio,
                            activeColor: Colors.orange,
                          ),
                        ),
                      ],
                    )
                  ],
                )),
              )),
          const SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            width: 330,
            child: const MyButton(
              text: 'Continue',
            ),
          ),
          const SizedBox(width: 80),
        ],
      ),
    );
  }
}
