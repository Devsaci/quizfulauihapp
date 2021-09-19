

import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  // const Question ({Key? key}) : super(key: key);

  final questionText;

  const Question({Key key, this.questionText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.all(10),
      color: Colors.limeAccent,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Text(
            _question[1],
            // 'What\'s your favorite color ?',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          )
        ],
      ),

    );
  }
}
