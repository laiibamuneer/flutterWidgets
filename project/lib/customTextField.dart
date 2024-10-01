import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  bool ispass;
  final Icon suffixIcon;
  final String hintText;
  TextEditingController controller = TextEditingController();
  CustomTextField(
      {super.key,
      required this.controller,
      this.ispass = false,
      required this.hintText,
      required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      
      obscureText: ispass,
      decoration: InputDecoration(
        hintText: hintText,
          suffixIcon: suffixIcon,
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(12))),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(12)))),
    );
  }
}
