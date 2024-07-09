import 'package:flutter/material.dart';

import 'custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });
  final List<Color> colors = const [
    const Color(0xffFFCC80),
    Color(0xffFFCCb0),
    Color(0xffFFCCe0),
    Color(0xffFFCC80),
    Color(0xffFFCCb0),
    Color(0xffFFCCe0),
    Color(0xffFFCC80),
    Color(0xffFFCCb0),
    Color(0xffFFCCe0),
    Color(0xffFFCC80),
    Color(0xffFFCCb0),
    Color(0xffFFCCe0),
  ];
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: colors.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: NoteItem(
            color: colors[index],
          ),
        ),
      ),
    );
  }
}
