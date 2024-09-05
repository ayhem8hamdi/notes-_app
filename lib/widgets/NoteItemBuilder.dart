import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/NoteCubit/note_cubit_states.dart';
import 'package:note_app/Cubits/NoteCubit/notes_cubit.dart';

import 'package:note_app/widgets/noteItem.dart';

class NoteItemBuilder extends StatelessWidget {
  const NoteItemBuilder({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NoteStates>(builder: (context, state) {
      if (state is NoteSuccess) {
        final notes = state.note;
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: notes.length,
          itemBuilder: (context, index) => Noteitem(
            not: notes[index],
          ),
        );
      } else if (state is NoteLoading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is NoteError) {
        return Center(child: Text('Failed to load notes: ${state.message}'));
      } else {
        return const Center(child: Text('No notes available'));
      }
    });
  }
}
