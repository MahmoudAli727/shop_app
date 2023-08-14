import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

class Popular extends StatelessWidget {
  const Popular({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(
            demo_product.length,
            (index) => Container(
              width: 154,
              padding: const EdgeInsets.all(16 / 2),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: demo_product[index].bgColor,
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                    ),
                    child: Image.asset(
                      demo_product[index].image,
                      height: 132,
                    ),
                  ),
                  const SizedBox(height: 16 / 2),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          demo_product[index].title,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 16 / 4),
                      Text(
                        r'$' + demo_product[index].price.toString(),
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
