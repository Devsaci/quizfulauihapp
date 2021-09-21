

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: const <Widget> [
            Text(
              "Text",
              style: TextStyle(fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ],
        )
    );
  }
}
