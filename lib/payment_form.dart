import 'package:flutter/material.dart';
import 'package:test_prj/components/my_button.dart';
import 'package:test_prj/components/my_hinttext_field.dart';

class PaymentForm extends StatelessWidget {
  const PaymentForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  MyHintTextField(
                      hintText: Text(
                    "Name",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w600),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "Card Number",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade500),
                        prefixIcon: Icon(
                          Icons.credit_card_rounded,
                          color: Colors.grey.shade500,
                        ),
                        enabled: true),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyHintTextField(
                      hintText: Text(
                    "Expiry Date",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w600),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  MyHintTextField(
                      hintText: Text(
                    "CVV",
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w600),
                  )),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.bottomCenter,
                child: const MyButton(
                  text: "Pay Now",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
