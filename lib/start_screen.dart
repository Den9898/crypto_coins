import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(
    this.startQuiz,{
    super.key,
  });

  final void Function()? startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
        ),
        Text(
          'Learn Flutter the fun way',
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            side: const BorderSide(
              color: Colors.black,
              width: 0.5, // толщина обводки
            ),
            foregroundColor: Colors.white, // цвет текста
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1), // скругление углов
            ),
          ),
          icon: Icon(Icons.arrow_right_alt),
          label: Text(
            'Start Quiz',
            style: GoogleFonts.lato(
              fontSize: 24
            ),
          ),
        ),
      ],
    );
  }
}
