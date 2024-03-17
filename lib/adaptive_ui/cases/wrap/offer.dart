import 'package:flutter/material.dart';

class Offer extends StatelessWidget {
  final int price;
  final String description;
  final String title;

  const Offer({
    Key? key,
    required this.price,
    required this.description,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.green[200],
        width: 150.0,
        height: 200.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                fontSize: 18.0,
              ),
            ),
            Text('\$ $price'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Buy'),
            ),
          ],
        ),
      ),
    );
  }
}
