import 'package:flutter/material.dart';
import 'package:notes/constants.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_text_field_center_text.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextFieldCenterlable(
              hint: 'Title',
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFieldCenterlable(
              hint: 'Content',
              hintMaxLines: 5,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(
              text: 'add',
              color: kPrimaryColor,
              width: MediaQuery.of(context).size.width,
              height: 55,
              textcolor: Colors.black,
              circular: 10,
            ),
          ],
        ),
      ),
    );
  }
}
