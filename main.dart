import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './psyare.dart';
import './button.dart';

void main() => runApp(MyApp());

// st automatic class lo drust daka
//./ lo away file ke de banh bkian

int x = 0;

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int countnum() {
    setState(() {
      x++;
      print(x);
    });

    return x;
  }
// mapping [index][key in the index cell]
  var Q = [
    {
      'psyar': '2+2=',
      'Walam': ['2', '4', '3'],
    },

    {
      'psyar': ' 2*3+(3+2)=',
      'Walam': ['12 ', '18', '11'],
    },

    {
      'psyar': '1kg of iron or 1kg cloud Have More Weight ?',
      'Walam': ['iron', 'cloud', 'Both']
    }


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

        body: x< Q.length ?  Column(
          children: [
            Question(Q[x]['psyar']),
            ...(Q[x]['Walam'] as List<String>).map((e) {
              return BOTTON(e, countnum);
            }).toList()
          ],
        ) : Center(
          child: Question('Slawww'),
        ),


      ),


    );


  }
}
