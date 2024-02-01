import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_text_field_center_text.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Notes',
              icon: Icons.check,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                // if(title != null){
                //   widget.note.title = title!;
                // }
                widget.note.subTitle = content ?? widget.note.subTitle;
                // if(content != null){
                //   widget.note.subTitle = content!;
                // }
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextFieldCenterlable(
              onChange: (value) {
                title = value;
              },
              hint: widget.note.title,
            ),
            const SizedBox(
              height: 24,
            ),
             CustomTextFieldCenterlable(
              onChange:  (value) {
                content = value;
              },
              hint: widget.note.subTitle,
              hintMaxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
