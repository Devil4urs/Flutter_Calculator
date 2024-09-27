import 'package:calculator/constant/colors.dart';
import 'package:flutter/material.dart';

class costumTextField extends StatelessWidget {
  const costumTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          border: InputBorder.none,
          fillColor: Appcolors.primaryColor,
          filled: true,
        ),
        style: const TextStyle(fontSize: 35),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}
