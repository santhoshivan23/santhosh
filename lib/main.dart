import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

@override
  State<StatefulWidget> createState() {
    
    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {


  var questions = [
    {
      'questionText' : 'What\'s your favourite colour?',
      'answerText' : ['Red','Blue','Green'] 
    },
    {
      'questionText' : 'What\'s your hobby',
      'answerText' : ['Swimming','Reading','Coding','Playing'] 
    },
     {
      'questionText' : 'What\'s your area of interest',
      'answerText' : ['Data Science','Machine Learning','Artificial Intelligence'] 
      }

    
    ];
  int counter = 0;
  void answered() {
    setState(() {
      counter++;
    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
        home : Scaffold(
          appBar: AppBar(
            title: Text("My First Flutter App"),
            ),
          body: Column(
          children: [
            Question(
              questions[counter]['questionText'],
            ),
            ...(questions[counter]['answers'] as List<String>)
                .map((answer) {
              return Answer(answer,answered);
            }).toList()
          ],
        ),
      ),
    );
  }
}
