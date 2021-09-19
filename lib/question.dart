

import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  // const Question ({Key? key}) : super(key: key);

  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(10),
      color: Colors.limeAccent,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Text(
            questionText,
            // 'What\'s your favorite color ?',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          )
        ],
      ),

    );
  }
}
