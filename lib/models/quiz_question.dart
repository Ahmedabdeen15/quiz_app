class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> shuffledAnswer() {
    final suffledlist = List.of(answers);
    suffledlist.shuffle();
    return suffledlist;
  }
}
