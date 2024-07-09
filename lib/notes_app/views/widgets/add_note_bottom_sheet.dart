import 'package:flutter/material.dart';
import 'package:flutter_udemy_tharwat2/notes_app/views/widgets/custom_button.dart';
import 'package:flutter_udemy_tharwat2/notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 24.0,
        left: 16,
        right: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //SizedBox(height: 20,),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 32,),
            CustomButton(),
            SizedBox(height: 24,),
          ],
        ),
      ),
    );
  }
}
