import 'package:flutter/material.dart';
import 'package:note_app/widgets/NoteItemBuilder.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 25,
        ),
        NoteItemBuilder(index: 7)
      ],
    );
  }
}
