class QuizQuestions {
  const QuizQuestions(this.text, this. answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers(){//Create a list  of strings
    final shuffledList = List.of(answers); // assign the list of values to new variable
    shuffledList.shuffle();//Shuffle the list
    return shuffledList;//return the list
  }
}