import 'package:flutter/material.dart';
import 'package:note_app/widgets/noteItem.dart';

class NoteItemBuilder extends StatelessWidget {
  const NoteItemBuilder({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: index,
            itemBuilder: (context, index) => const Noteitem()));
  }
}
