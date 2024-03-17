import 'package:flutter/material.dart';

class PricingDetails extends StatelessWidget {
  final int price;
  const PricingDetails({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Text(
            'Price:',
            style: TextStyle(fontSize: 32.0),
          ),
          const Spacer(flex: 1),
          Text(
            '\$$price',
            style: const TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
          ),
          const Spacer(flex: 5),
        ],
      ),
    );
  }
}
