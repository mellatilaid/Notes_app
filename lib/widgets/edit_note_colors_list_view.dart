import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

import 'note_color.dart';

class EditNoteColorsList extends StatefulWidget {
  final NoteModel note;

  const EditNoteColorsList({
    super.key,
    required this.note,
  });

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  late int itemColorIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    itemColorIndex = kColors.indexOf(Color(widget.note.color));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                itemColorIndex = index;
              });
              widget.note.color = kColors[index].value;
            },
            child: NoteColor(
              itemColor: kColors[index],
              isItemSelected: itemColorIndex == index,
            ),
          );
        },
      ),
    );
  }
}
