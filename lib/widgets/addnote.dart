import 'package:flutter/material.dart';

import 'package:note_app/widgets/add_note_form.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ModelBottomsheetForm(),
      ],
    );
  }
}
