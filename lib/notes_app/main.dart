import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/notes_app/constants.dart';
import 'package:flutter_udemy_tharwat2/notes_app/models/note_model.dart';
import 'package:flutter_udemy_tharwat2/notes_app/views/notes_view.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),

      home: const NotesView(),
    );
  }
}
