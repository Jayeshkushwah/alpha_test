import 'package:flutter/material.dart';
import 'package:test_prj/components/my_button.dart';
import 'package:test_prj/components/my_textfield.dart';
import 'package:test_prj/login_page_2.dart';
import 'package:test_prj/sign_up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [
                Color.fromRGBO(252, 130, 59, 1),
                Color.fromRGBO(211, 83, 7, 1),
              ])),
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 50),
                        // App Icon
                        // const Icon(
                        //   Icons.water_drop_outlined,
                        //   color: Colors.green,
                        //   size: 60,
                        // ),
                        Image.asset(
                          "assets/Logo.png",
                          height: 62,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
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
                                "Individual",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage2())),
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
                                  "Company",
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const MyTextField(
                          labelText: Text("Phone No Or Email"),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't Have an account? "),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp())),
                              child: const Text(
                                "Sign Up",
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
          ),
        ),
      ),
    );
  }
}
