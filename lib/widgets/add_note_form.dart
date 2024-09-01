import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/widgets/CustomButton.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class ModelBottomsheetForm extends StatefulWidget {
  const ModelBottomsheetForm({
    super.key,
  });

  @override
  State<ModelBottomsheetForm> createState() => _ModelBottomsheetFormState();
}

class _ModelBottomsheetFormState extends State<ModelBottomsheetForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.always;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
            maxLines: 1,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: 'Content ...',
            maxLines: 7,
            onSaved: (value) {
              content = value;
            },
          ),
          const SizedBox(
            height: 25,
          ),
          CustomButton(
            onpressed: () {
              if (formkey.currentState!.validate() == true) {
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
