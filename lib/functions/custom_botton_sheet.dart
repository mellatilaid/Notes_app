import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_action_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class CustomBottonSheet extends StatelessWidget {
  const CustomBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextField(labelText: 'Title'),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              labelText: 'content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomActionButton(
                title: 'Add', onPressed: () {}, backGroundColor: kPrimaryColor),
          ],
        ),
      ),
    );
  }
}
