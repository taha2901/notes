import 'package:flutter/material.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ?  CircleAvatar(
            radius: 33,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: color,
            ),
          )
        :  CircleAvatar(
            radius: 33,
            backgroundColor: color,
          );
  }
}

class ListColorsItem extends StatefulWidget {
  const ListColorsItem({super.key});

  @override
  State<ListColorsItem> createState() => _ListColorsItemState();
}

class _ListColorsItemState extends State<ListColorsItem> {
  int currentIndex = 0;
  List<Color> colors = [
    Color(0xff17bebb),
    Color(0xff2e282a),
    Color(0xffcd5334),
    Color(0xffedb88b),
    Color(0xfffad8d6),
    Color(0xff161925),
    Color(0xff23395b),
    Color(0xff8ea8c3),
    Color(0xffcbf7ed),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 33 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorsItem(isActive: currentIndex == index, color: colors[index],),
            ),
          );
        },
      ),
    );
  }
}
