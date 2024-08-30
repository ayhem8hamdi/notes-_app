import 'package:flutter/material.dart';
import 'package:note_app/widgets/CustomButton.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Expanded(
          child: Column(
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
                maxLines: 7,
              ),
              SizedBox(
                height: 25,
              ),
              CustomButton()
            ],
          ),
        ),
      ],
    );
  }
}
