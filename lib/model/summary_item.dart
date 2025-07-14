import 'package:crypto_coins/model/question_indentifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData,{super.key,});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIndentifier(
          questionIndex: itemData['question_index'] as int,
          isCorrectiAnswer: isCorrectAnswer,
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                itemData['user_answer'] as String,
                style: TextStyle(color: Colors.pink),
              ),
              Text(
                itemData['correct_answer'] as String,
                style: TextStyle(color: Colors.tealAccent),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
