import 'package:flutter/material.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: 400,
        width: 350,
        child: const Text(
          "Laiba",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
