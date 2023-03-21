import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String labelText;
  final String hintText;
  final IconData prefixIconData;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    this.obscureText = false,
    required this.labelText,
    required this.hintText,
    required this.prefixIconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        labelText: labelText,
        floatingLabelStyle: TextStyle(color: Colors.yellow),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.lightGreen),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.lightGreen,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        prefixIcon: Icon(
          prefixIconData,
        ),
      ),
    );
  }
}