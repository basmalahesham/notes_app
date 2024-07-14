import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_udemy_tharwat2/notes_app/add_note_cubit/add_notes_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AddNotesCubit(),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 24.0,
          left: 16,
          right: 16,
        ),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesFailure) {
              print('failed ${state.errMessage}');
            }
            if (state is AddNotesSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNotesLoading ? true : false,
              child: const SingleChildScrollView(child: AddNoteForm()),
            );
          },
        ),
      ),
    );
  }
}
