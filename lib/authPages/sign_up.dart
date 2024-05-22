import 'package:flutter/material.dart';
import 'package:test_prj/components/my_button.dart';
import 'package:test_prj/components/my_textfield.dart';
import 'package:test_prj/authPages/login_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                    "Sign Up",
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

                  const SizedBox(height: 25),
                  const MyTextField(
                    labelText: Text("Phone No Or Email"),
                  ),
                  const SizedBox(height: 15),
                  const MyTextField(
                    labelText: Text("Full Name"),
                  ),
                  const SizedBox(height: 15),
                  const MyTextField(
                    labelText: Text("Gst Number (optional)"),
                  ),
                  const SizedBox(height: 15),
                  const MyTextField(
                    labelText: Text("Create Password"),
                  ),

                  const SizedBox(height: 20),
                  const MyButton(text: "Sign Up"),
                  const SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already Have an account? "),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage())),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            color: Color.fromRGBO(138, 180, 2, 1),
                          ),
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
