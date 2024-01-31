// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/widgets/add_note_form.dart';

class AddNoteButtonSheet extends StatefulWidget {
  const AddNoteButtonSheet({super.key});

  @override
  State<AddNoteButtonSheet> createState() => _AddNoteButtonSheetState();
}

class _AddNoteButtonSheetState extends State<AddNoteButtonSheet> {
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('Failed ${state.errMessage}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoaded ? true : false,
                child: const AddNoteForm());
          },
        ),
      ),
    );
  }
}
