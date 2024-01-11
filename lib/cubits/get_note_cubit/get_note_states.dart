import 'package:notes_app/models/note_model.dart';

class GetNoteState {}

class NoteInitial extends GetNoteState {}

class GetNoteSuccess extends GetNoteState {
  final List<NoteModel> notes;
  GetNoteSuccess({required this.notes});
}

class GetNoteFailuire extends GetNoteState {
  final String errMessage;
  GetNoteFailuire({required this.errMessage});
}

class GetNoteLading extends GetNoteState {}
