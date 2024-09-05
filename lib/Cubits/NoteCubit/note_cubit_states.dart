import 'package:note_app/Models/note_model.dart';

class NoteStates {}

class NoteIntital extends NoteStates {}

class NoteLoading extends NoteStates {}

class NoteSuccess extends NoteStates {
  final List<NoteModel> note;
  NoteSuccess({required this.note});
}

class NoteError extends NoteStates {
  final String message;

  NoteError({required this.message});
}
