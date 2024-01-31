
import 'package:flutter/material.dart';
import 'package:notes/constants.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_text_field_center_text.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFieldCenterlable(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFieldCenterlable(
            hint: 'Content',
            hintMaxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
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
            onTap: () {
              if(formkey.currentState!.validate()){
                formkey.currentState!.save();
              }
              else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
