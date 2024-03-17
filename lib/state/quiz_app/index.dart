import 'package:flutter/material.dart';

import 'controllers/question.dart';

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Question()
    );
  }
}
