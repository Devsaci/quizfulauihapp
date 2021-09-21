import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizfulauihapp/answer.dart';
import 'package:quizfulauihapp/question.dart';
import 'package:quizfulauihapp/quiz.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

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
        'Black',
        'Green',
        'Blue',
        'Yellow',
      ]
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        'Rabbit',
        'Tiger',
        'Elephant',
        'Lion',
      ]
    },
    {
      'questionText': 'What\'s your favorite Language ?',
      'answers': [
        'JAVA',
        'JAVASCRIPT',
        'DART',
        'PYTHON',
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
              :
        ),
      ),
    );
  }
}
