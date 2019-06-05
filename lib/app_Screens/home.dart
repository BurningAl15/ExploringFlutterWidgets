import 'package:flutter/material.dart';

final containerTextColor=Colors.grey[600];
final containerWidth=400.0;
final containerHeight=100.0;
final containerColor=Colors.deepPurple[50];

final textFontSize=30.0;
final textFontFamily='Amatic';
AssetImage assetImage1=AssetImage('Assets/bb2.jpeg');
AssetImage assetImage2=AssetImage('Assets/bby.jpeg');
Image img1=Image(image:assetImage1,width: 250.0,height:300.0,);
Image img2=Image(image:assetImage2,width: 250.0,height:300.0,);

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Container(
        alignment: Alignment.center,
        padding:EdgeInsets.only(left:10.0,top:40.0),
        color: containerColor,
        //width:containerWidth,
        //height:containerHeight,
        margin:EdgeInsets.all(15.0),
        //padding:EdgeInsets.all(10),
        //margin:EdgeInsets.only(left:5.0,right:5.0,top:10.0,bottom: 10.0),
        child:Column(
         children: <Widget>[
            Row(
              children:<Widget>[
                Expanded(
                  child:Text(
                    'Aldhair Vera,',
                    textDirection:TextDirection.ltr,
                    style: TextStyle(
                      color:containerTextColor,
                      decoration: TextDecoration.none,
                      fontSize:textFontSize,
                      fontFamily: textFontFamily,
                      //fontWeight: FontWeight.w300
                    )
                  ),

                ),
                Expanded(
                    child:Text(
                      'GameDev,',
                      textDirection:TextDirection.ltr,
                      style: TextStyle(
                        color:containerTextColor,
                        decoration: TextDecoration.none,
                        fontSize:textFontSize,
                        fontFamily: 'Snes',
                        //fontWeight: FontWeight.w300
                      )
                    ),
                ),
                Expanded(
                  child: Text(
                    'CompSci',
                    textDirection:TextDirection.ltr,
                    style: TextStyle(
                      color:containerTextColor,
                      decoration: TextDecoration.none,
                      fontSize:textFontSize,
                      fontFamily: 'ShadowsIntoLight',
                      //fontWeight: FontWeight.w300
                    )
                  ),
              ),
              ]
            ),
            Row(
                children:<Widget>[
                  Expanded(
                    child:Text(
                        'Father of stormy,',
                        textDirection:TextDirection.ltr,
                        style: TextStyle(
                          color:containerTextColor,
                          decoration: TextDecoration.none,
                          fontSize:textFontSize,
                          fontFamily: textFontFamily,
                          //fontWeight: FontWeight.w300
                        )
                    ),

                  ),
                  Expanded(
                    child: Text(
                        'The blondie',
                        textDirection:TextDirection.ltr,
                        style: TextStyle(
                          color:containerTextColor,
                          decoration: TextDecoration.none,
                          fontSize:textFontSize,
                          fontFamily: 'ShadowsIntoLight',
                          //fontWeight: FontWeight.w300
                        )
                    ),
                  ),
                ]
            ),
            Row(
                children:<Widget>[
                  //FlightImageAsset()
                  Expanded(
                      child: img1
                  ),
                  Expanded(
                      child:img2
                  )
                ]
            )
         ],
        )
      )
    );
  }
}

class FlightImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    AssetImage assetImage=AssetImage('Assets/bb2.jpeg');
    Image img=Image(image:assetImage,width: 250.0,height:300.0);
    return Container(child:img);
  }
}