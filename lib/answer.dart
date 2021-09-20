



import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String answerQuestion;
  final Function x;


  Answer( this.x, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed:  x,
        child:  Text(
          answerQuestion, style: TextStyle(fontSize: 25),
        ),
        color: Colors.red,
        textColor: Colors.white,
      ),

    );
  }
}
