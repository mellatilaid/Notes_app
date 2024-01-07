import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

Future<dynamic> customBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    context: context,
    builder: (context) {
      return const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(),
          ],
        ),
      );
    },
  );
}
