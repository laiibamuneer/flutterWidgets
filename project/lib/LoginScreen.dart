import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            const TextField(),
            const SizedBox(
              height: 20,
            ),
            const TextField(),
            ElevatedButton(
                onPressed: () {
                  print("Hello");
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
