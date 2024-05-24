import 'package:flutter/material.dart';
import 'package:test_prj/components/my_button.dart';
import 'package:test_prj/components/my_textfield.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
              Color.fromRGBO(252, 130, 59, 1),
              Color.fromRGBO(211, 83, 7, 1),
            ])),
        child: Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Container(
            decoration: const BoxDecoration(
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
                  const SizedBox(height: 50),
                  // App Icon
                  const Icon(
                    Icons.water_drop_outlined,
                    color: Colors.green,
                    size: 60,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Please Sign in to your account",
                    style: TextStyle(
                        // fontSize: 26,
                        // fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          height: 45,
                          width: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                width: 1, color: Colors.grey.shade100),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "individual",
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
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          "Company",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const MyTextField(
                    labelText: Text("Membership No."),
                  ),
                  const SizedBox(height: 15),
                  const MyTextField(
                    labelText: Text("Password"),
                  ),
                  const SizedBox(height: 15),
                  const Row(
                    children: [
                      Text("Forgot Password? "),
                      Text(
                        "Reset It",
                        style: TextStyle(
                          color: Color.fromRGBO(138, 180, 2, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const MyButton(text: "Login"),
                  const SizedBox(height: 100),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have an account? "),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Color.fromRGBO(138, 180, 2, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
