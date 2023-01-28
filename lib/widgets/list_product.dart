import 'package:flutter/material.dart';
import 'package:point_of_sale_lat/models/product.dart';

import '../data/data.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildListProduct(BuildContext context, Product products) {
      return Container(
        margin: const EdgeInsets.all(10),
        width: 200,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage(products.imageUrl),
                width: 140,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    products.name,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2A3256)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    '\$${products.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff1A72DD)),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xff1A72DD),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 24.0,
                ),
                color: Colors.white,
              ),
            )
          ],
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.all(20),
      height: 600,
      // color: Colors.amber,
      child: ListView.builder(
        itemCount: products.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          Product product = products[index];
          return buildListProduct(context, product);
        },
      ),
    );
  }
}
