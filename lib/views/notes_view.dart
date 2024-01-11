import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

import '../widgets/custom_botton_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              context: context,
              builder: (context) {
                return const CustomBottonSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
