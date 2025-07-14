class QuizQuestions {
  QuizQuestions(this.text, this.answer);

  final String text;
  final List<String> answer;

  List<String> getshuffleAnswer() {
    final shuffledList = List.of(answer);
    shuffledList.shuffle();
    return shuffledList;
  }
}
