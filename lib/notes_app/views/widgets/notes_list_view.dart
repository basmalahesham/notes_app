import 'package:flutter/material.dart';

import 'custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key,});
//final data = const [ Color(0xffFFCCb0),];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 4.0),
        child: NoteItem(),
      ),
    );
  }
}
