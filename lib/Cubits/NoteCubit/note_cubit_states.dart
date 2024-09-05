import 'package:note_app/Models/note_model.dart';

class NoteStates {}

class NoteIntital extends NoteStates {}

class NoteLoading extends NoteStates {}

class NoteSucces extends NoteStates {
  final List<NoteModel> note;
  NoteSucces(this.note);
}

class NoteFailed extends NoteStates {
  final String errormsg;

  NoteFailed(this.errormsg);
}
