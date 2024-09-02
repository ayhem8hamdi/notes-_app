import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/AddNoteCubit/addnotes_cubit.dart';
import 'package:note_app/Models/note_model.dart';
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
            onChanged: (value) {
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
            onChanged: (value) {
              content = value;
            },
          ),
          const SizedBox(
            height: 25,
          ),
          CustomButton(
            onpressed: () {
              if (formkey.currentState!.validate() == true) {
                formkey.currentState!.save();
                NoteModel notemodel = NoteModel(
                    title: title!,
                    content: content!,
                    date: DateTime.now().toString());
                BlocProvider.of<AddNoteCubit>(context).addnote(notemodel);
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
