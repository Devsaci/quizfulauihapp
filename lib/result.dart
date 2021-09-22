import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function() q;
final int resultScore;
  Result(this.q,this.resultScore);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
       Text(
          "your Score is : $resultScore",
          style: TextStyle(
              fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
        ),
        FlatButton(
            onPressed: q,
            child: const Text(
              "Restart The App",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold),
            ))
      ],
    ));
  }
}
