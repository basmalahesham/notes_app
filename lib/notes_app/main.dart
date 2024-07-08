import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/notes_app/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      theme: ThemeData(brightness: Brightness.dark),

      home: const NotesView(),
    );
  }
}