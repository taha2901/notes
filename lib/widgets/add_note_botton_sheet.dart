import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_text_field_center_text.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          CustomTextFieldCenterlable(
            hint: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFieldCenterlable(
            hint: 'Content',
            hintMaxLines: 5,
          ),
        ],
      ),
    );
  }
}
