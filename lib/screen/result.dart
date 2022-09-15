import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  const Result({super.key, required this.resultScore});

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome";
    } else if (resultScore <= 12) {
      resultText = "Pretty Likabel";
    } else if (resultScore <= 16) {
      resultText = "Your are .. strange?";
    } else {
      resultText = "You are so bed";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20),
      ),
    );
  }
}
