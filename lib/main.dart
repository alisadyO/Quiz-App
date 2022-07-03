
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/button.dart';
import 'package:quizapp/psyare.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());
// flutter doc and final enum and debug aw vidio tamsha bkawa
// st automatic class lo drust daka
//./ lo away file ke de banh bkian

int x = 0;
int totalscore =0;
int start =0;
int countQuestion =1;

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {






  void START (){
setState(() {
  start=1;

});



  }




  void rest (){



    setState(() {

      x=0;
      totalscore =0;
      start =0;

    });


  }



  int countnum(int score) {
    totalscore += score;
    setState(() {
      countQuestion ++;
      x++;
      print(x);
    });

    return x;
  }
// mapping [index][key in the index cell]
  var Q = [
    {
      'psyar': '2+2=',
      'Walam': [
        {'value':'2','score': 0},
        {'value':'4','score':1},
        {'value':'3','score':0}],
    },

    {
      'psyar': ' 2*3+(3+2)=',
      'Walam': [
        {'value':'22','score':0},
        {'value':'11','score':1},
        {'value':'18','score':0},

      ],
    },

  ];

  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          toolbarHeight: 90,
          titleSpacing: 10,
          backgroundColor: Colors.teal,

          title: Container(
              margin: EdgeInsets.all(30),

              child: Text('Quiz App',

                style: TextStyle(
                  fontSize: 35,
                  color: Colors.black54,

                ),


              )),


        ),
// cond ? true : false ternary operation

        body: Column (

          children: [
if(start == 0)...[
Question1('Test Your IQ in Math'),

FLATTBOTTON(START)
]



else if(start ==1)...[
    x< Q.length ? QUIZ(countnum, Q, x,countQuestion) :RESULT(totalscore,rest )

]

          ],



        )








      ),


    );


  }
}
