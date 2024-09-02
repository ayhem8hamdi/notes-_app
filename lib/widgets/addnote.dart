import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/Cubits/AddNoteCubit/addnote_cubit_states.dart';
import 'package:note_app/Cubits/AddNoteCubit/addnotes_cubit.dart';

import 'package:note_app/widgets/add_note_form.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        BlocConsumer<AddNoteCubit, AddNoteStates>(
          listener: (context, state) {
            if (state is AddNoteSucces) {
              Navigator.pop(context);
            } else if (state is AddNoteFailure) {
              print('failed');
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoading ? true : false,
                child: const ModelBottomsheetForm());
          },
        )
      ],
    );
  }
}
