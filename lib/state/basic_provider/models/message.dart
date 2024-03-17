import 'package:flutter/material.dart';

class MessageModel extends ChangeNotifier {
  String _message = '';

  String get message => _message;

  void change(String text) {
    _message = text;

    notifyListeners();
  }

  bool isStartWithS() {
    return _message.toLowerCase().startsWith('s');
  }
}
