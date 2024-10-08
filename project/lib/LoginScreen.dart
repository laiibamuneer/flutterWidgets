import 'package:flutter/material.dart';
import 'package:project/SignUpScreen.dart';
import 'package:project/customTextField.dart';
import 'package:project/Custombutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
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
                  "Login",
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
                     hintText: "Enter Your Email",
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.grey,
                      ),
                      controller: emailController),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomTextField(
                    hintText: "Enter Your Password",
                      ispass: true,
                      suffixIcon: Icon(
                        Icons.lock,
                        color: Colors.grey,
                      ),
                      controller: passController),
                ],
              ))

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
              ,
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                  onTap: () {
                    print(emailController.text.trim());
                    print(passController.text.trim());
                  },
                  text: "Login"),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dont have an account?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpSreen()));
                      },
                      child: const Text(
                        "SignUp",
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
