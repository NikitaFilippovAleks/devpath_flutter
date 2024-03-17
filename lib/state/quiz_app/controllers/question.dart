import 'package:flutter/material.dart';
import '../models/questions.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  int questionIndex = 0;
  bool answerChecked = false;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10,),
        Text(
          questions[questionIndex].question,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
        SizedBox(height: 10,),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          direction: Axis.vertical,
          spacing: 10,
          children: questions[questionIndex].answers.map((answer) {
            return ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedAnswer = answer;
                });
              },
              child: Text(answer.answer)
            );
          }).toList(),
        ),
        SizedBox(height: 20,),
        Center(
          child: selectedAnswer != null ? ElevatedButton(
            child: Text(
              answerChecked ? 'Next' : 'Check'
            ),
            onPressed: () {
              answerChecked ? setState(() {
                questionIndex == questions.length ? questionIndex = 0 : questionIndex++;
                selectedAnswer = null;
                answerChecked = false;
              }) : setState(() {
                answerChecked = true;
              });
            },
          ) : null
        ),
        SizedBox(height: 10,),
        if (answerChecked && selectedAnswer != null) Container(
          height: 50,
          width: 50,
          child: Icon(selectedAnswer!.correct ? Icons.check : Icons.close),
          decoration: BoxDecoration(color: selectedAnswer!.correct ? Colors.green : Colors.red),
        )
      ],
    );
  }
}
