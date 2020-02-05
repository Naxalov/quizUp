import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_up/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quiz = QuizBrain();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> scoreKeeper = [];
  int _score;
  double _progressValue;
  double _addProgress = quiz.getProgress();

  @override
  void initState() {
    _progressValue = 0;
    _score =0;
  }

  @override

  void checkAnswer(bool userAnswer) {
    if (userAnswer == quiz.getCorrectAnswer()) {
      _score += 1;
      scoreKeeper.add(Icon(
        Icons.check,
        color: Colors.green,
      ));
    } else {
      scoreKeeper.add(Icon(
        Icons.close,
        color: Colors.red,
      ));
    }
    setState(() {
      _progressValue += _addProgress ;

      bool isFinished =quiz.nextQuestion();
      if (isFinished == false){
        Alert(context: context, title: "Finished", desc: "Your score is $_score / ${quiz.getTotalNumber()}").show();
         quiz.reset();
        _progressValue = 0;
        _score = 0;
        quiz.setShuffle();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
        Container(
              child: LinearProgressIndicator(value: _progressValue,),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Text(
                    quiz.getQuestionText(),
                    style:
                        GoogleFonts.lato(fontSize: 25.0, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: FlatButton(
                  child: Text(
                    'True',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    checkAnswer(true);
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: FlatButton(
                  child: Text(
                    'False',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    checkAnswer(false);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
