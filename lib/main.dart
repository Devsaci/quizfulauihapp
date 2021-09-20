import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizfulauihapp/answer.dart';
import 'package:quizfulauihapp/question.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void answerQuestion() {
    if (_questionIndex == 1) {
      _questionIndex = -1;
    }
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    print("answer Chosen");
  }

  final _question = [
    {'':''},

    'What\'s your favorite color ?',
    'What\'s your favorite animal ?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Container(
          child: Column(
            children: [
              Question(_question[_questionIndex]),
              Answer(answerQuestion, "Answer 1"),
              Answer(answerQuestion, "Answer 2"),
              Answer(answerQuestion, "Answer 3"),
            ],
          ),
        ),
      ),
    );
  }
}
