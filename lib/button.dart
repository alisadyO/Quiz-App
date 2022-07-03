import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BOTTON extends StatelessWidget {
  var tx;
  Function() index;

  BOTTON(this.tx, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Container(
            child: Text(
          tx,
          style: TextStyle(fontSize: 23,
          color: Colors.black54)
              ,
          textAlign: TextAlign.center,

        ),
padding: EdgeInsets.all(2)
        
        ),
        onPressed: index,
        color: Colors.teal,

      ),
     height: 50,// double.all aw kata ba pey size phone
      width: 500,//.......
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(1),

    );
  }
}

class FLATTBOTTON extends StatelessWidget {
  final Function() index ;
  FLATTBOTTON(this.index);

  @override
  Widget build(BuildContext context) {
    return Center(


     child: Container(
      child:  RaisedButton(



        child: Container(


            child: Text(


              'Start',
              style: TextStyle(fontSize: 23, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
            padding: EdgeInsets.all(2)),
        onPressed: index,
        color: Colors.teal,


      ),




      height: 50,
      // double.all aw kata ba pey size phone
      width: 500,
      //.......
      margin: EdgeInsets.fromLTRB(0, 200, 0, 0),
      padding: EdgeInsets.all(1),
    ));
  }
}
