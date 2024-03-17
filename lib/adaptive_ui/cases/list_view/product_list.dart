import 'package:flutter/material.dart';

import 'product.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (_, orientation) {
      return ListView.builder(
        scrollDirection: orientation == Orientation.landscape
            ? Axis.horizontal
            : Axis.vertical,
        itemBuilder: (_, index) => Product(index: index),
      );
    });
  }
}
