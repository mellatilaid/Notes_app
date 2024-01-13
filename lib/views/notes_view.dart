import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/delete_note_cubit/delete_note_cubit.dart';
import 'package:notes_app/cubits/fetch_notes_cubit/fetch_note_cubit.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

import '../widgets/custom_botton_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FetchNotesCubit()),
        BlocProvider(create: (context) => DeleteNoteCubit()),
      ],
      child: Scaffold(
        body: const NotesViewBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                context: context,
                builder: (context) {
                  return const CustomBottonSheet();
                });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
