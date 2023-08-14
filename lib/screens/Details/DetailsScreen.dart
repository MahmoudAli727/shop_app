// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/Details/components/Body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
  final Product product;
  static String routeName = '/Details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset(
              "assets/icons/Heart.svg",
              height: 20,
            ),
          )
        ],
      ),
      body: Body(product: product),
    );
  }
}
