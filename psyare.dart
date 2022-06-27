import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var psyare;

  Question(this.psyare);

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
