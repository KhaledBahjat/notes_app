import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.prefixIcon,
    this.hintText,
    this.label,
    this.suffixIcon,
    this.obscureText = false,
  });
  Widget? prefixIcon;
  String? hintText;
  Widget? label,suffixIcon;
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.all(20),
        prefixIcon: prefixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 146, 145, 145),
          ),
        ),
        label: label,
        hintText: hintText,
        filled: true,
        fillColor: Colors.grey[200],
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.grey[200]!),
        ),
      ),
    );
  }
}
