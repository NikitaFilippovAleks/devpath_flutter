import 'package:flutter/material.dart';

import 'offer.dart';

class WrappedOffers extends StatelessWidget {
  const WrappedOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        Offer(
          price: 19,
          description: '1 GB storage',
          title: 'Basic',
        ),
        Offer(
          price: 39,
          description: '5 GB storage',
          title: 'Family',
        ),
        Offer(
          price: 69,
          description: '10 GB storage',
          title: 'Pro',
        ),
        Offer(
          price: 89,
          description: 'Unlimited storage',
          title: 'Enterprise',
        ),
      ],
    );
  }
}
