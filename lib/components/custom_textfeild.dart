import 'package:flutter/material.dart';

class MyTextFeild extends StatelessWidget {

  final conttroller;
  final String hintText;
  final secureText;

  const MyTextFeild(
      {
        super.key,
        this.conttroller,
        required this.hintText,
        required this.secureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: conttroller,
        obscureText: secureText,
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])
        ),
      ),
    );
  }
}
