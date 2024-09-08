import 'package:flutter/material.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({
    super.key,
    required this.not,
  });
  final NoteModel not;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? first, contnt;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        CustomTextField(
          onChanged: (p0) {
            first = p0;
          },
          val: widget.not.title,
          hint: 'Title',
          maxLines: 1,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          onChanged: (p0) {
            contnt = p0;
          },
          val: widget.not.content,
          hint: 'Content ...',
          maxLines: 9,
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
