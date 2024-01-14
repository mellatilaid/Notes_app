import 'package:flutter/material.dart';
import 'package:notes_app/extension/navigation_extension.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';

import 'custom_note_title.dart';

class CustomNoteItem extends StatelessWidget {
  final NoteModel note;
  const CustomNoteItem({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.toView(EditNoteView(
          note: note,
        ));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomNoteTitle(
              note: note,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 16),
              child: Text(
                note.date,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.6), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
