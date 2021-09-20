



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
        onPressed: () {},
        child:  Text(
          "Answer 1", style: TextStyle(fontSize: 25),
        ),
        color: Colors.red,
        textColor: Colors.white,

      ),

    );
  }
}
