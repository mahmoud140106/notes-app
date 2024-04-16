import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xFFFFBE0B),
    Color(0xFFFB5607),
    Color(0xFFFF006E),
    Color(0xFF8338EC),
    Color(0xFF3A86FF),
    Color(0xFF9B5DE5),
    Color(0xFFF15BB5),
    Color(0xFFFEE440),
    Color(0xFF00BBF9),
    Color(0xFF00F5D4),
    Color(0xFFFF99C8),
    Color(0xFFFCF6BD),
    Color(0xFFD0F4DE),
    Color(0xFFA9DEF9),
    Color(0xFFE4C1F9),
    Color(0xFFFFC8DD),
    Color(0xFFFFAFCC),
    Color(0xFFBDE0FE),
    Color(0xFFA2D2FF),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 6,
            ),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
