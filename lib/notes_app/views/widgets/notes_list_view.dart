import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_udemy_tharwat2/notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:flutter_udemy_tharwat2/notes_app/models/note_model.dart';

import 'custom_notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  /*final List<Color> colors = const [
    Color(0xffFFCC80),
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
  ];*/

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            //itemCount: state is NotesSuccess ? state.notes.length : 0,
            //itemCount: colors.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: NoteItem(
                note: notes[index],
                //color: colors[index],
              ),
            ),
          ),
        );
      },
    );
  }
}
