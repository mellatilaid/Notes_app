import 'package:flutter/material.dart';

import 'custom_note_title.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: const Color(0xffFFCD7B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CustomNoteTitle(),
          Padding(
            padding: const EdgeInsets.only(right: 16, top: 16),
            child: Text(
              'May 22/2023',
              style:
                  TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
