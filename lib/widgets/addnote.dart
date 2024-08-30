import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 36,
        ),
        CustomTextField(
          hint: 'Title',
        )
      ],
    );
  }
}
