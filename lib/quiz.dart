import 'package:flutter/material.dart';
import 'package:new_quiz_app/questions_screen.dart';
import 'package:new_quiz_app/start_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers= [];

  var activeScreen = 'start-screen';

void chooseAnswer(String answer){
  selectedAnswers.add(answer);
}

  void switchScreen(){
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(  context) {

    Widget  screenWidget = StartScreen(switchScreen);
    if(activeScreen == 'questions-screen'){
         screenWidget =  QuestionsScreen(onSelectedAnswer: chooseAnswer,);
    }

    
   
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                Color.fromARGB(174, 9, 9, 205),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topLeft,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
