import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project/LoginScreen.dart';
import 'package:project/customTextField.dart';
import 'package:project/Custombutton.dart';

class SignUpSreen extends StatelessWidget {
  const SignUpSreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    final TextEditingController userController = TextEditingController();
    final TextEditingController contactController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 250,
              ),
              const Center(
                child: Text(
                  "SignUp",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextField(
                      hintText: "Enter Your UserName",
                      suffixIcon: const Icon(
                        Icons.people,
                        color: Colors.grey,
                      ),
                      controller: userController),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomTextField(
                      hintText: "Enter Your Email",
                      suffixIcon: const Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      controller: emailController),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomTextField(
                      hintText: "Create a Strong password",
                      ispass: true,
                      suffixIcon: const Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      controller: passController),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomTextField(
                      hintText: "Enter Your Contact",
                      ispass: true,
                      suffixIcon: const Icon(
                        Icons.phone_rounded,
                        color: Colors.grey,
                      ),
                      controller: contactController),
                ],
              )),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  onTap: () {
                    log(emailController.text.trim());
                    log(passController.text.trim());
                    log(contactController.text.trim());
                    log(userController.text.trim());

                    emailController.clear();
                    passController.clear();
                    userController.clear();
                    contactController.clear();
                  },
                  text: "SignUp"),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: const Text(
                        "SignIn",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
