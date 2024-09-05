import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/NoteCubit/note_cubit_states.dart';
import 'package:note_app/Cubits/NoteCubit/notes_cubit.dart';
import 'package:note_app/Models/note_model.dart';
import 'package:note_app/widgets/noteItem.dart';

class NoteItemBuilder extends StatelessWidget {
  const NoteItemBuilder({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NoteStates>(builder: (context, state) {
      List<NoteModel> not = BlocProvider.of<NotesCubit>(context).not;
      return ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: not.length,
          itemBuilder: (context, index) => Noteitem(
                not: not[index],
              ));
    });
  }
}
