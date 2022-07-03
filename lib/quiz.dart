import 'package:flutter/material.dart';
import 'package:quizapp/main.dart';
import './psyare.dart';
import 'button.dart';



class  QUIZ  extends StatelessWidget {
final Function countnum ;

final List<Map<String,Object>> Q;
  int countquestion =0;
 final int x ;

QUIZ (this.countnum,this.Q,this.x,this.countquestion);



@override
Widget build(BuildContext context) {
    return Column(

          children: [

          Question(Q[x]['psyar'],countQuestion),

            ...(Q[x]['Walam'] as List<Map<String,Object>>).map((e) {

          return BOTTON(e['value'], ()=>countnum(e['score']));

        }).toList()
            ],
       );
}
}
