import 'package:flutter/material.dart';
import 'package:note_app/widgets/noteItem.dart';

// ignore: must_be_immutable
class NoteItemBuilder extends StatelessWidget {
  NoteItemBuilder({super.key, required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: index,
            itemBuilder: (context, index) => const Noteitem()));
  }
}
