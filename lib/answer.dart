



import 'package:flutter/material.dart';

class Answer extends StatelessWidget {


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
