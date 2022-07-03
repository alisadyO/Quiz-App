import 'package:flutter/material.dart';
import './psyare.dart';




class RESULT extends StatelessWidget {
  int x =0;
final Function()  rest ;



RESULT(this.x,this.rest);
  @override
  Widget build(BuildContext context) {
    return  Column(

      children: <Widget>[
        Question1('You Get $x/2 score'),
    FlatButton(onPressed: rest, child: Text('Click For Restart'))




      ],

    );
    

    

  }
}
