import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widgets/state/basic_provider/controllers/counter.dart';
import 'package:widgets/state/basic_provider/controllers/message.dart';

import 'models/counter.dart';
import 'models/message.dart';

class BasicProvider extends StatelessWidget {
  const BasicProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterModel()),
        ChangeNotifierProvider(create: (context) => MessageModel())
      ],
      child: Center(
        child: ListView(
          padding: EdgeInsets.only(top: 10),
          children: [
            Column(
              children: [
                Text(
                  'Press the buttons below:',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22
                  ),
                ),
                Counter(),
                Message()
              ],
            )
          ],
        ) 
      ),
    );
  }
}
