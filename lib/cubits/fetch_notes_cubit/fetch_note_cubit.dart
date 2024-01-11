import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/fetch_notes_cubit/fetch_note_states.dart';
import 'package:notes_app/models/note_model.dart';

class FetchNotesCubit extends Cubit<GetNoteState> {
  FetchNotesCubit() : super(GetNoteInitial());

  fetchAllNotes() {
    try {
      var notesBox = Hive.box(kNoteBox);

      List<NoteModel> notes = notesBox.values.toList() as List<NoteModel>;
      emit(GetNoteSuccess(notes: notes));
    } catch (e) {
      emit(GetNoteFailuire(errMessage: e.toString()));
    }
  }
}
