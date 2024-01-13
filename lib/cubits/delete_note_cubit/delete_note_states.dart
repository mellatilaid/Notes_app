class DeleteNoteState {}

class DeleteInitialState extends DeleteNoteState {}

class DeleteNoteSuccess extends DeleteNoteState {}

class DeleteNoteFailed extends DeleteNoteState {
  final String errMesssage;

  DeleteNoteFailed({required this.errMesssage});
}

class DeleteNoteLaoding extends DeleteNoteState {}
