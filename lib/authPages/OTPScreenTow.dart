import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pinput/pinput.dart';
import 'package:test_prj/components/my_button.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [
              Color.fromRGBO(252, 130, 59, 1),
              Color.fromRGBO(211, 83, 7, 1),
            ],
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45.0, left: 20),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                // SizedBox(
                //   height: 45,
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 45.0, left: 100),
                  child: Text(
                    'Verify OTP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 60.0,
              ),
              child: Container(
                height: 625,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      // App Icon
                      Icon(
                        Icons.water_drop_outlined,
                        color: Colors.green,
                        size: 60,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Enter verification code",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Enter the OTP sent to +91 9566231110",
                        style: TextStyle(color: Colors.black.withOpacity(0.5)
                            // fontSize: 26,
                            // fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 21.0),
                        child: Container(
                          child: Pinput(
                            length: 4,
                            defaultPinTheme: PinTheme(
                                width: 56,
                                height: 60,
                                textStyle: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(13))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MyButton(text: "Verify"),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't received Otp? "),
                          Text(
                            "Resend OTP",
                            style: TextStyle(
                              color: Color.fromRGBO(138, 180, 2, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
