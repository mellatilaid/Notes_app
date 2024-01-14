import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class NoteColor extends StatelessWidget {
  final Color itemColor;
  final bool isItemSelected;
  const NoteColor({
    super.key,
    required this.itemColor,
    required this.isItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    isItemSelected
        ? BlocProvider.of<AddNoteCubit>(context).setNoteColor(color: itemColor)
        : null;
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: isItemSelected
          ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 24,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: itemColor,
              ),
            )
          : CircleAvatar(
              radius: 20,
              backgroundColor: itemColor,
            ),
    );
  }
}
