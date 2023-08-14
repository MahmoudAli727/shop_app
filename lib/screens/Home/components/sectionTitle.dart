// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.black.withOpacity(0.7)),
        ),
        const Spacer(),
        const Text("See All"),
      ],
    );
  }
}
