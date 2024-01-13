import 'package:flutter/material.dart';

final List<Color> colors = [
  Colors.black,
  Colors.blue,
  Colors.green,
  Colors.blueGrey,
  Colors.blueAccent,
  Colors.yellow,
  Colors.orangeAccent,
];

class ColorItem extends StatelessWidget {
  final Color itemColor;
  const ColorItem({super.key, required this.itemColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          radius: 20,
          backgroundColor: itemColor,
        ),
      ),
    );
  }
}

class ColorItemListView extends StatelessWidget {
  const ColorItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ColorItem(
            itemColor: colors[index],
          );
        },
      ),
    );
  }
}
