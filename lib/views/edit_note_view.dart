import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/AddNoteCubit/addnotes_cubit.dart';
import 'package:note_app/Cubits/NoteCubit/notes_cubit.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/widgets/custom_text_field.dart';
import 'package:note_app/widgets/searchicon.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key});
  static String id = 'EditNoteView';

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? first, contnt;
  @override
  Widget build(BuildContext context) {
    NoteModel note = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SearchIcon(
              onPressed: () {
                note.title = first ?? note.title;
                note.content = contnt ?? note.content;
                note.delete();
                BlocProvider.of<AddNoteCubit>(context).addnote(note);
                BlocProvider.of<NotesCubit>(context).fetchNotes();
                Navigator.pop(context);
              },
              iconData: Icons.check,
            ),
          )
        ],
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Edit Note',
            style: TextStyle(fontSize: 31),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            controller: TextEditingController(text: note.title),
            onChanged: (p0) {
              first = p0;
            },
            hint: 'Title',
            maxLines: 1,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            controller: TextEditingController(text: note.content),
            onChanged: (p0) {
              contnt = p0;
            },
            hint: 'Content ...',
            maxLines: 9,
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
