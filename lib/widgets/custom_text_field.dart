import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double verPadding;
  const CustomTextField({super.key, this.verPadding = 16});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(horizontal: 8, vertical: verPadding),
        labelText: 'Title',
        labelStyle: const TextStyle(color: Color(0xff54EBD7)),
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
