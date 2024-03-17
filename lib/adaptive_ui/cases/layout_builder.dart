import 'package:flutter/material.dart';

class FlutterIsLove extends StatelessWidget {
  final double size = 200;

  FlutterIsLove({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(builder: (context, constraints) {
        final wideEnough = constraints.maxWidth > size * 2;

        return Flex(
          direction: wideEnough ? Axis.horizontal : Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlutterLogo(size: size),
            Icon(Icons.favorite, color: Colors.red, size: size),
          ],
        );
      })
    );
  }
}
