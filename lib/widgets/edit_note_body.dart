import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        CustomTextField(
          hint: 'Title',
          maxLines: 1,
        ),
        SizedBox(
          height: 20,
        ),
        CustomTextField(
          hint: 'Content ...',
          maxLines: 9,
        ),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
