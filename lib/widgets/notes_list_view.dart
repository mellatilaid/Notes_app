import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    final notesBox = Hive.box<NoteModel>(kNoteBox);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ValueListenableBuilder(
          valueListenable: notesBox.listenable(),
          builder: (context, Box<dynamic> notes, _) {
            return ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                final NoteModel note = notes.getAt(index) as NoteModel;
                return CustomNoteItem(
                  note: note,
                );
              },
            );
          }),
    );
  }
}
