import 'package:flutter/material.dart';

final containerTextColor=Colors.grey[600];
final containerWidth=400.0;
final containerHeight=100.0;

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.deepPurple[50],
        //width:containerWidth,
        //height:containerHeight,
        //margin:EdgeInsets.all(30.0),
        margin:EdgeInsets.only(left:5.0,right:5.0,top:10.0,bottom: 10.0),
        //padding:EdgeInsets.all(10),
        child:Text(
            'Flight',
            textDirection:TextDirection.ltr,
            style: TextStyle(color:containerTextColor)
        ),

      )
    );
  }
}