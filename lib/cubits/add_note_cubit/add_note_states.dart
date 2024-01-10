class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailuire extends AddNoteState {
  final String errMessage;
  AddNoteFailuire({required this.errMessage});
}
