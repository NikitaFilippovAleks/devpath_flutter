import 'package:flutter/material.dart';

import 'product.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 500.0,
      children: List.generate(100, (i) => Product(index: i)),
      childAspectRatio: 1.5,
    );
  }
}
