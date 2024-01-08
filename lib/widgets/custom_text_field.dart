import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final double verPadding;
  final String labelText;
  const CustomTextField(
      {super.key, this.verPadding = 16, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(horizontal: 8, vertical: verPadding),
        labelText: labelText,
        labelStyle: const TextStyle(color: kPrimaryColor),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
