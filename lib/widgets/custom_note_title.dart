import 'package:flutter/material.dart';

class CustomNoteTitle extends StatelessWidget {
  const CustomNoteTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      title: const Padding(
        padding: EdgeInsets.only(bottom: 12),
        child: Text(
          'Flutter tips',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ),
      subtitle: Text(
        'Build your career with mellati laid',
        style: TextStyle(
          fontSize: 16,
          color: Colors.black.withOpacity(0.6),
        ),
      ),
      trailing: IconButton(
        padding: const EdgeInsets.only(right: 8),
        onPressed: () {},
        icon: const Icon(
          Icons.delete,
          color: Colors.black,
        ),
      ),
    );
  }
}
