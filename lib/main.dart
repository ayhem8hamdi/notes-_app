import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:note_app/views/edit_note_view.dart';
import 'package:note_app/views/notes_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('notes');
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        NotesView.id: (context) => const NotesView(),
        EditNoteView.id: (context) => const EditNoteView()
      },
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      initialRoute: NotesView.id,
    );
  }
}
