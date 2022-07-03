import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/main.dart';

class Question extends StatelessWidget {
  var psyare;
int countQuestion =0;

  Question(this.psyare,this.countQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(

        width: double.infinity,
        margin: EdgeInsets.fromLTRB(15, 45, 15, 20),

        child:  Text(
         '($countQuestion)  $psyare',
          style: TextStyle(fontSize: 37,
color: Colors.black54


          ),
          textAlign: TextAlign.center,
        )
    );
  }
}
class Question1 extends StatelessWidget {
  var psyare;


  Question1(this.psyare);

  @override
  Widget build(BuildContext context) {
    return Container(

        width: double.infinity,
        margin: EdgeInsets.fromLTRB(15, 45, 15, 20),

        child: Text(
          psyare,
          style: TextStyle(fontSize: 37,
              color: Colors.black54


          ),
          textAlign: TextAlign.center,
        )
    );
  }
}