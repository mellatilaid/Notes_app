import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

class CustomNoteTitle extends StatelessWidget {
  final NoteModel note;
  const CustomNoteTitle({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Text(
          note.title,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
      subtitle: Text(
        note.subTitle,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black.withOpacity(0.6),
        ),
      ),
      trailing: IconButton(
        padding: const EdgeInsets.only(right: 8),
        onPressed: () {
          note.delete();
        },
        icon: const Icon(
          Icons.delete,
          color: Colors.black,
        ),
      ),
    );
  }
}
