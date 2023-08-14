// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';

class TextFieldcard extends StatelessWidget {
  const TextFieldcard({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        prefixIcon: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/Search.svg",
            height: 22,
            width: 22,
          ),
        ),
        suffixIcon: SizedBox(
          width: 48,
          height: 48,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 1,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // ignore: deprecated_member_use
                  primary: primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12))),
              onPressed: () {},
              child: SvgPicture.asset("assets/icons/Filter.svg"),
            ),
          ),
        ),
        hintText: "Search items...",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
