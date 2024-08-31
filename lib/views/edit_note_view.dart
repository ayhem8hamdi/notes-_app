import 'package:flutter/material.dart';
import 'package:note_app/widgets/edit_note_body.dart';
import 'package:note_app/widgets/searchicon.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'EditNoteView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: SearchIcon(
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
      body: const EditNoteBody(),
    );
  }
}
