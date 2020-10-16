import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get finalResult {
    String resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent! (Love emoji) ';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable! (Likeable emoji)';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange? (strange emoji)';
    } else {
      resultText = 'You are so bad! (angry emoji)';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        finalResult,
        style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
      ),
    );
  }
}
