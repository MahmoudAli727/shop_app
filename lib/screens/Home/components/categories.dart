import 'package:flutter/material.dart';
import 'package:shop_app/models/Category.dart';
import 'package:shop_app/screens/Home/components/categories_imp.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            demo_categories.length,
            (index) => ItemOfListt(
              text: demo_categories[index].title,
              icon: demo_categories[index].icon,
            ),
          ),
        ],
      ),
    );
  }
}
