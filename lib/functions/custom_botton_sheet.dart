import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_form.dart';

class CustomBottonSheet extends StatelessWidget {
  const CustomBottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
