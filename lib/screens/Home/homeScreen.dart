// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/screens/Home/components/Body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/icons/Location.svg",
              height: 14,
            ),
            const Text(
              ' 15/2 New Texas',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            )
          ],
        ),
        centerTitle: true,
        actions: [
          SvgPicture.asset("assets/icons/Notification.svg"),
          const SizedBox(
            width: 7,
          )
        ],
      ),
      body: const Body(),
    );
  }
}
