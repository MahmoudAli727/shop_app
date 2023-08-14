// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class ColorsCard extends StatelessWidget {
  const ColorsCard({super.key, required this.color, required this.isActive});
  final Color color;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16 / 4),
      decoration: BoxDecoration(
        border: Border.all(color: primaryColor.withOpacity(isActive ? 1 : 0)),
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: 10,
        backgroundColor: color,
      ),
    );
  }
}
