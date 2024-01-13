import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel note;
  const EditNoteViewBody({super.key, required this.note});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CustomAppBar(
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();
                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: Icons.check,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextField(
                onChanged: (data) {
                  title = data;
                },
                labelText: 'Title'),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onChanged: (data) {
                content = data;
              },
              labelText: 'Content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
