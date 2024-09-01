import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/Cubits/AddNoteCubit/addnote_cubit_states.dart';
import 'package:note_app/Models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitial());

  addnote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>('notes');
      await notesBox.add(note);
      emit(AddNoteSucces());
    } catch (e) {
      emit(AddNoteFailure());
      print(e.toString());
    }
  }
}
