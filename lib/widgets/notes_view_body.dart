import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';

class NotesviewBody extends StatelessWidget {
  const NotesviewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
