import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/Cubits/NoteCubit/note_cubit_states.dart';
import 'package:note_app/Models/note_model.dart';

class NotesCubit extends Cubit<NoteStates> {
  NotesCubit() : super(NoteIntital());
  addnote(NoteModel note) async {
    try {
      var notesBox = Hive.box<NoteModel>('notes');
      emit(NoteSucces(notesBox.values.toList()));
    } catch (e) {
      emit(NoteFailed(e.toString()));
    }
  }
}
