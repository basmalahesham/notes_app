import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_udemy_tharwat2/notes_app/models/note_model.dart';
import 'package:flutter_udemy_tharwat2/notes_app/views/widgets/custom_button.dart';
import 'package:flutter_udemy_tharwat2/notes_app/views/widgets/custom_text_field.dart';
import 'package:intl/intl.dart';

import '../../cubits/add_note_cubit/add_notes_cubit.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value) => title = value,
            hint: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) => subTitle = value,
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNotesLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formattedCurrentDate = DateFormat.yMEd().format(currentDate);
                    //var formattedCurrentDate = DateFormat('dd-mm-yyyy').format(currentDate);
                    var noteModel = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: formattedCurrentDate.toString(),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
