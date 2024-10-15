import 'package:flutter/material.dart';
import 'package:new_quiz_app/answer_button.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return  SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           const Text(
            'The questions...',
            style: TextStyle(color: Colors.white),
          ),
           const SizedBox(
            height: 30,
          ),
         AnswerButton(
          onTap:(){},
          answerText: 'Text',
          
          ),
         
         AnswerButton(
          onTap:(){},
          answerText: 'Text',
          ),
         
         AnswerButton(
          onTap:(){},
          answerText: 'Text',
          ),
         
        ],
      ),
    );
  }
}
