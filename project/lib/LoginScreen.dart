import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project/customTextField.dart';
import 'package:project/Custombutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            // const TextField(
            //   controller: emailController,
            //   decoration: InputDecoration(
            //       // prefixIcon: Icon(
            //       //   Icons.email,
            //       //   color: Colors.grey,
            //       // ),
            //       errorBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.red, width: 2),
            //           borderRadius: BorderRadius.all(Radius.circular(12))),
            //       focusedBorder: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.grey, width: 2),
            //           borderRadius: BorderRadius.all(Radius.circular(12))),
            //       border: OutlineInputBorder(
            //           borderSide: BorderSide(color: Colors.green, width: 2),
            //           borderRadius: BorderRadius.all(Radius.circular(12)))),
            // ),

            const SizedBox(
              height: 12,
            ),
            CustomTextField(
                suffixIcon: Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                controller: emailController),

            CustomTextField(
                ispass: true,
                suffixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
                controller: passController),

            ElevatedButton(
                onPressed: () {
                  print(emailController.text.trim());
                },
                child: Text("Login")),
            MaterialButton(
              onPressed: () {
                print("Login");
              },
              child: Text("Login"),
            ),
            // InkWell(
            //     onTap: () {
            //       print(emailController.text.trim());
            //       print(passController.text.trim());
            //     },
            //     child: Container(
            //       height: 50,
            //       width: double.infinity,
            //       decoration: BoxDecoration(
            //           color: Colors.lightGreen,
            //           borderRadius: BorderRadius.circular(20)),
            //       child: Center(
            //         child: Text("Login In"),
            //       ),
            //     ))

            CustomButton(
                onTap: () {
                  print(emailController.text.trim());
                  print(passController.text.trim());
                },
                text: "Login")
          ],
        ),
      ),
    );
  }
}
