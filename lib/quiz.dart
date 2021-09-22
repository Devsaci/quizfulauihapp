
import 'package:flutter/material.dart';
import 'package:quizfulauihapp/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
 final List<Map<String, Object>> question;
 final int questionIndex;
 final Function(int score) answerQuestion;

 Quiz(this.question, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
            question[questionIndex]['questionText'].toString()),
        ...(question[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answerChosen) {
          return Answer(() => answerQuestion(int.parse(answerChosen['score'].toString())), answerChosen['text'].toString());
        }).toList(),
      ],
    );
  }
}
