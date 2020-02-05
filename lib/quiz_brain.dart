import 'package:quiz_up/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Questions> _qs = [
    Questions(
        question: 'You can lead a cow down stairs but not up stairs.',
        answer: false),
    Questions(
        question: 'Approximately one quarter of human bones are in the feet.',
        answer: true),
    Questions(question: 'A slug\' blood is green.', answer: true),
    Questions(question: '5*4=15', answer: false),
    Questions(question: '10/2=5', answer: true),
    Questions(question: '3+1=4', answer: true),
  ];

  String getQuestionText() {
    return this._qs[_questionNumber].question;
  }

  bool getCorrectAnswer() {
    return this._qs[_questionNumber].answer;
  }

  void nextQuestion() {
    if (_questionNumber < _qs.length - 1) {
      _questionNumber++;
    }
  }
}
