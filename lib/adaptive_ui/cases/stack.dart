import 'package:flutter/material.dart';

class StackWidgets extends StatelessWidget {
  const StackWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: Colors.green[200],
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Content',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Pressed');
                    },
                    child: Text('Press')
                  )
                ],
              )
            ),
          ),
        ),
        OrientationBuilder(builder: (context, orientation) {
          return Align(
            alignment: orientation == Orientation.portrait
                ? Alignment.bottomCenter
                : Alignment.bottomRight,
            child: const SafeArea(
              child: Text(
                'latest version 1.1.0',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          );
        }),
      ],
    );
  }
}
