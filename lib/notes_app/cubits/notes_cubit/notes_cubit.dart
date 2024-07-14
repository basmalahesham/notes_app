import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import '../../constants.dart';
import '../../models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    List<NoteModel> notes = notesBox.values.toList();
    emit(NotesSuccess(notes));
  }
}
