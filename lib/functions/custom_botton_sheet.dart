import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class CustomBottonSheet extends StatelessWidget {
  const CustomBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomTextField(labelText: 'Title'),
        ],
      ),
    );
  }
}
