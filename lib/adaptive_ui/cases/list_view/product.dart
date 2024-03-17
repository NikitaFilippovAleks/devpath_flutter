import 'package:flutter/material.dart';

import 'pricing_details.dart';

class Product extends StatelessWidget {
  final int index;
  const Product({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.green[200],
          child: Row(
            children: [
              Container(
                  color: Colors.green[500],
                  child: const FlutterLogo(size: 190.0)),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    PricingDetails(price: index),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          'Description: the Flutter logo is a beautiful blue icon.',
                          style: TextStyle(fontSize: 18.0)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
