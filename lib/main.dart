import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizfulauihapp/quiz.dart';
import 'package:quizfulauihapp/result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color w = Colors.white;
  Color b = Colors.black;
  bool isSwitched = false;

  int _totalScore = 0;
  int _questionIndex = 0;

  void _reseltQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
      // _totalScore;
    });
    print("index question :  $_questionIndex");
    print("score  =  $_totalScore");
    print("answer Chosen");
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 30},
        {'text': 'Yellow', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Tiger', 'score': 20},
        {'text': 'Elephant', 'score': 30},
        {'text': 'Lion', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s your favorite Language ?',
      'answers': [
        {'text': 'JAVA', 'score': 10},
        {'text': 'JAVASCRIPT', 'score': 20},
        {'text': 'DART', 'score': 30},
        {'text': 'PYTHON', 'score': 40},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            Switch(
                value: isSwitched,
                onChanged: (Value) {
                  setState(() {
                    isSwitched = Value;
                    print(isSwitched);
                  });
                }),
          ],
          title: Text("Quiz App"),
        ),
        body: Container(
          color: w,
          child: _questionIndex < _question.length
              ? Quiz(_question, _questionIndex, answerQuestion)
              : Result(_reseltQuiz, _totalScore),
        ),
      ),
    );
  }
}
