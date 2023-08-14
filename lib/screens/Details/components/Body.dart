// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/Details/components/Color.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            product.image,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          const SizedBox(height: 16 * 1.5),
          Container(
            padding:
                const EdgeInsets.only(top: 32, bottom: 16, left: 16, right: 16),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(48),
                topRight: Radius.circular(48),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      r"$" + product.price.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                      "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons"),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Colors",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 16 / 2),
                const Row(
                  children: [
                    ColorsCard(
                      color: Color(0xFFBEE8EA),
                      isActive: false,
                    ),
                    ColorsCard(
                      color: Color(0xFF141B4A),
                      isActive: true,
                    ),
                    ColorsCard(
                      color: Color(0xFFF4E5C3),
                      isActive: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.orange[900],
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: const Text(
                    "Add Card",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
