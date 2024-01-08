import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final Color backGroundColor;

  const CustomActionButton({
    super.key,
    required this.title,
    required this.onPressed,
    required this.backGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width, 30),
        backgroundColor: backGroundColor,
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
