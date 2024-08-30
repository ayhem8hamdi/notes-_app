import 'package:flutter/material.dart';
import 'package:note_app/widgets/noteItem.dart';
import 'package:note_app/widgets/searchicon.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: SearchIcon(),
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
      body: const Noteitem(),
    );
  }
}
