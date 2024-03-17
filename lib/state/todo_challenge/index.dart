import 'package:flutter/material.dart';

import 'controllers/todo.dart';

class TodoChallenge extends StatelessWidget {
  const TodoChallenge({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Todo() 
    );
  }
}
