// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:shop_app/screens/Home/components/TextField.dart';
import 'package:shop_app/screens/Home/components/categories.dart';
import 'package:shop_app/screens/Home/components/new_arrival.dart';
import 'package:shop_app/screens/Home/components/popular.dart';
import 'package:shop_app/screens/Home/components/sectionTitle.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    var sizebox = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: sizebox * 0.025,
            ),
            const Text(
              "Explore",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            const Text("best Outfits for you", style: TextStyle(fontSize: 18)),
            SizedBox(height: sizebox * 0.025),
            const TextFieldcard(),
            const SizedBox(height: 20),
            const Categories(),
            SizedBox(height: sizebox * 0.05),
            const SectionTitle(text: "New Arrival"),
            SizedBox(height: sizebox * 0.04),
            const NewArrival(),
            SizedBox(height: sizebox * 0.04),
            const SectionTitle(text: "Popular"),
            SizedBox(height: sizebox * 0.04),
            const Popular(),
            SizedBox(height: sizebox * 0.06),
          ],
        ),
      ),
    );
  }
}
