import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemOfListt extends StatelessWidget {
  const ItemOfListt({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text, icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black.withOpacity(0.2))),
      child: Column(
        children: [
          SvgPicture.asset(icon),
          const SizedBox(
            height: 7,
          ),
          Text(text),
        ],
      ),
    );
  }
}
