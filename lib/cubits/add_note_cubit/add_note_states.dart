class AddNote {}

class AddNoteInitial extends AddNote {}

class AddNoteLoading extends AddNote {}

class AddNoteSuccess extends AddNote {}

class AddNoteFailuire extends AddNote {
  final String errMessage;
  AddNoteFailuire({required this.errMessage});
}
