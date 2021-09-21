
import 'package:flutter/material.dart';
import 'package:quizfulauihapp/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
            _question[_questionIndex]['questionText'].toString()),
        ...(_question[_questionIndex]['answers'] as List<String>)
            .map((answerChosen) {
          return Answer(answerQuestion, answerChosen);
        }).toList(),
      ],
    );
  }
}
