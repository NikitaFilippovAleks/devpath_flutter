import 'package:flutter/widgets.dart';

class CounterModel extends ChangeNotifier {
  num _count = 0;

  num get count => _count;

  void increment() {
    _count++;

    notifyListeners();
  }
}
