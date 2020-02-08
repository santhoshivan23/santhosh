import 'package:flutter/material.dart' ;

class Answer extends StatelessWidget {

  final Function handler;
  final String answerText;
  Answer(this.answerText,this.handler);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width : double.infinity,
      margin: EdgeInsets.all(5),
      child : RaisedButton(
        color: Colors.blueAccent,
        child: Text("Answer 1", style: TextStyle(color: Colors.white),),
        onPressed: handler),
    );
  }
}
