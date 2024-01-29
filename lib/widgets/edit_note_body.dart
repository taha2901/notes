import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_text_field_center_text.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Notes',
              icon: Icons.check,
            ),
            SizedBox(height: 50,),
            CustomTextFieldCenterlable(hint: 'Title',),
            SizedBox(height: 24,),
            CustomTextFieldCenterlable(hint: 'Content',hintMaxLines: 5,),
          ],
        ),
      ),
    );
  }
}
