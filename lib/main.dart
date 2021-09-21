import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizfulauihapp/answer.dart';
import 'package:quizfulauihapp/question.dart';
import 'package:quizfulauihapp/quiz.dart';
import 'package:quizfulauihapp/result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _reseltQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void answerQuestion() {
    // if (_questionIndex == 2) {
    //   _questionIndex = -1;
    // }
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
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
          title: Text("Quiz App"),
        ),
        body: Container(
            child: _questionIndex < _question.length
                ? Quiz(_question, _questionIndex, answerQuestion)
                : Result(_reseltQuiz)),
      ),
    );
  }
}
