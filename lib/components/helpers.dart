import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 12,),
        Padding(
          padding:EdgeInsets.symmetric(horizontal:10.0),
          child:Container(
          height: 0.5,
          width:double.infinity,
          color:Colors.grey[300],),
        ),
        SizedBox(height: 24,),
      ],
    );
  }
}
