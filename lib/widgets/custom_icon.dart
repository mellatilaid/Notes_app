import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  const CustomIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey.withOpacity(0.3),
        ),
        child: Icon(icon),
      ),
    );
  }
}
