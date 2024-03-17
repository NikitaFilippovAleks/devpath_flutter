class Answer {
  final String answer;
  final bool correct;

  Answer({ required this.answer, required this.correct });
}

class Question {
  final String question;
  final List<Answer> answers;

  Question({ required this.question, required this.answers });
}

List<Question> questions = [
  Question(
    question: '1 + 1 = ?',
    answers: [
      Answer(answer: '2', correct: true),
      Answer(answer: '23', correct: false),
      Answer(answer: '45', correct: false),
      Answer(answer: '6656', correct: false),
    ]
  ),
  Question(
    question: 'Какого цвета клубника?',
    answers: [
      Answer(answer: 'Синяя', correct: false),
      Answer(answer: 'Зеленая', correct: false),
      Answer(answer: 'Красная', correct: true),
      Answer(answer: 'Черная', correct: false),
    ]
  )
];
