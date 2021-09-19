import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final _question = [
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
        ),
      ),
    );
  }
}
