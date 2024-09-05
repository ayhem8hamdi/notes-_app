import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/Cubits/NoteCubit/note_cubit_states.dart';
import 'package:note_app/Models/note_model.dart';

class NotesCubit extends Cubit<NoteStates> {
  NotesCubit() : super(NoteIntital());
  List<NoteModel> not = [];
  fetchNotes() {
    var notesBox = Hive.box<NoteModel>('notes');
    not = notesBox.values.toList();
  }
}
