import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/NoteCubit/notes_cubit.dart';
import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/widgets/NoteItemBuilder.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({
    super.key,
  });

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        child: NoteItemBuilder(index: 7),
      ),
    );
  }
}
