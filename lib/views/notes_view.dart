import 'package:flutter/material.dart';
import 'package:notes/widgets/add_note_botton_sheet.dart';
import 'package:notes/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddNoteButtonSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesviewBody(),
    );
  }
}


