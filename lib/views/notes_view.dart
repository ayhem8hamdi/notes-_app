import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/NoteCubit/notes_cubit.dart';
import 'package:note_app/widgets/addnote.dart';
import 'package:note_app/widgets/notesviewbody.dart';
import 'package:note_app/widgets/searchicon.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: SearchIcon(
              iconData: Icons.search,
            ),
          )
        ],
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Notes',
            style: TextStyle(fontSize: 31),
          ),
        ),
      ),
      body: const NoteViewBody(),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(150)),
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) => const AddNote());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
