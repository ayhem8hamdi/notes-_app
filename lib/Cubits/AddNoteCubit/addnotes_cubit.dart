import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/AddNoteCubit/addnote_cubit_states.dart';
import 'package:note_app/Models/note_model.dart';

class NotesCubit extends Cubit<AddNoteStates> {
  NotesCubit() : super(AddNoteInitial());

  addnote(NoteModel note) {}
}
