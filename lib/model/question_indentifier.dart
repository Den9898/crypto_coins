import 'package:flutter/material.dart';

class QuestionIndentifier extends StatelessWidget {
  const QuestionIndentifier({
    super.key,
    required this.questionIndex,
    required this.isCorrectiAnswer,
  });

  final int questionIndex;
  final bool isCorrectiAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex +1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectiAnswer ? Colors.blue : Colors.pink,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),

      ),
    );
  }
}
