import 'package:crypto_coins/data/questoins.dart';
import 'package:crypto_coins/question_summary.dart';
import 'package:crypto_coins/start_screen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswer,
    required this.onRestart,
  });

  final List<String> chosenAnswer;
  final void Function() onRestart;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> sumary = [];

    for (var i = 0; i < widget.chosenAnswer.length; i++) {
      sumary.add({
        'question_index': i,
        'question': question[i].text,
        'correct_answer': question[i].answer[0],
        'user_answer': widget.chosenAnswer[i],
      });
    }
    return sumary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = question.length;
    final numCorrectQuestions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You answer $numCorrectQuestions out of $numTotalQuestions questions correctly',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              QuestionSummary(summaryData),
              SizedBox(
                height: 30,
              ),
              TextButton.icon(
                onPressed: widget.onRestart,
                icon: Icon(Icons.restart_alt,color: Colors.white,size: 20,),
                label: Text('Restart Quiz',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 11111111
//  Widget activescreen = Container();

//   @override
//   void initState() {
//     activescreen = StartScreen(switchScreen);
//     super.initState();
//   }

//   void switchScreen() {
//     setState(() {
//       activescreen = QuestionScreen();
//     });
//   }

// 22222222222222
// var activeScreen = 'start-screen';

//   switchScreen() {
//     setState(() {
//       activeScreen = 'quisteon-screnn';
//     });
//   }

// activeScreen == 'start-screen'
//                 ? StartScreen(switchScreen)
//                 : QuestionScreen(),

//333333333333333
//  Widget screenWidget = StartScreen(switchCase);

//     if (activeScreen == 'question-screen') {
//       screenWidget = QuestionScreen();
//     }
