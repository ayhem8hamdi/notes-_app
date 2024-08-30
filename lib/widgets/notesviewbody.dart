import 'package:flutter/material.dart';
import 'package:note_app/widgets/NoteItemBuilder.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
      child: NoteItemBuilder(index: 7),
    );
  }
}
