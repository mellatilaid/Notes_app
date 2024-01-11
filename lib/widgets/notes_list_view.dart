import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/fetch_notes_cubit/fetch_note_cubit.dart';
import 'package:notes_app/cubits/fetch_notes_cubit/fetch_note_states.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: BlocBuilder<FetchNotesCubit, FetchNotesState>(
        builder: (context, state) {
          List<NoteModel> notes =
              BlocProvider.of<FetchNotesCubit>(context).notes ?? [];
          if (notes.isEmpty) {
            return const Center(
              child: Text('Add Your Notes'),
            );
          }
          return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return CustomNoteItem(
                note: notes[index],
              );
            },
          );
        },
      ),
    );
  }
}
