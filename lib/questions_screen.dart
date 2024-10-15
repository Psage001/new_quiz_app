import 'package:flutter/material.dart';
import 'package:new_quiz_app/answer_button.dart';
import 'package:new_quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {

var currentQuestionIndex = 0;

void answerQuestion() {

  //currentQuestionIndex = currentQuestionIndex + 1;
  // currentQuestionIndex +=1;
  setState(() {
      currentQuestionIndex++;
  });

}

  @override
  Widget build(context) {
    final currentQuestion= questions[currentQuestionIndex];

    return  SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
        child: Column(// wrap a column widget to get access to margins for things so refactor then wrap it in container
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
              Text(
             currentQuestion.text,
              style: const TextStyle(color: Colors.white), 
              textAlign: TextAlign.center,// use textallign to allign the text
            ),
             const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer){/// the ... is to make the function work as this is of type list/iterable that is inside of type widget
              return AnswerButton(answerText: answer, onTap: answerQuestion, );// Dynamically generate a list this ethod puts the answers as comma seperated values
            }),
          ],
        ),
      ),
    );
  }
}
