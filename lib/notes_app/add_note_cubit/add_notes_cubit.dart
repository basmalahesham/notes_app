import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_udemy_tharwat2/notes_app/constants.dart';
import 'package:flutter_udemy_tharwat2/notes_app/models/note_model.dart';
import 'package:hive_flutter/adapters.dart';

part 'add_notes_state.dart';


class AddNotesCubit extends Cubit<AddNotesState>{
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NoteModel note) async{
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
         await  notesBox.add(note);
      emit(AddNotesSuccess());
    }  catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}