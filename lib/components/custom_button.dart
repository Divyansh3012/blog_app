import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btn_name;
  final Function()? onTap;

  const MyButton({
    super.key,
    required this.btn_name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Colors.blue,
        borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(btn_name, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold), )
        ),
      ),
    );
  }
}
