import 'package:quiz_up/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Questions> _qs = [
    Questions(
        question: '1+1=3',
        answer: false),
    Questions(
        question: '10^2=1024',
        answer: true),
    Questions(question: '0!=1', answer: true),
    Questions(question: '3254345^0=1', answer: true),
    Questions(question: '5*4=15', answer: false),
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

  bool nextQuestion() {
    if (_questionNumber < _qs.length - 1) {
      _questionNumber++;
      return true;
    }
    return false;
  }
//bool isFinished(){
//
//}
  double getProgress() {
    return 1.0 / _qs.length;
  }

  void reset(){
    _questionNumber = 0 ;
  }
  int getTotalNumber(){
    return _qs.length;
  }

  void setShuffle(){
    _qs.shuffle();
  }
}
