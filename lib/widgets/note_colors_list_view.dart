import 'package:flutter/material.dart';

import 'note_color.dart';

class NoteColorsListView extends StatefulWidget {
  const NoteColorsListView({super.key});

  @override
  State<NoteColorsListView> createState() => _NoteColorsListViewState();
}

class _NoteColorsListViewState extends State<NoteColorsListView> {
  final List<Color> colors = [
    const Color(0xff6BC9BA),
    const Color(0xffc8d96f),
    const Color(0xffd4d2a5),
    const Color(0xff46b1c9),
    const Color(0xff84c0c6),
    const Color(0xff9fb7b9),
    const Color(0xffbcc1ba),
    const Color(0xffefa48b),
    const Color(0xffc6d8af)
  ];
  int itemColorIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                itemColorIndex = index;
              });
            },
            child: NoteColor(
              itemColor: colors[index],
              isItemSelected: itemColorIndex == index,
            ),
          );
        },
      ),
    );
  }
}
