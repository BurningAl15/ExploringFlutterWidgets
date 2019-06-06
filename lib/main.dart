import 'package:flutter/material.dart';
import './app_Screens/home.dart';
import 'dart:math';

final appName="Exploring UI Widgets";

final appScreenText="Widget app";
final appBarColor=Colors.grey[600];

AssetImage logoAsset=AssetImage('Assets/INART_Logo.png');
Image logo=Image(image:logoAsset,width: 250.0,height:300.0,);

//List<Colors> listColor= new List<Colors>(4);
final colorA=Colors.deepPurple;
final colorB=Colors.amber;
final colorC=Colors.lightBlue;
final colorD=Colors.cyan;
final colors={Colors.deepPurple,Colors.yellow,Colors.red,Colors.lightGreen,Colors.amber,Colors.lightBlue};
//void main() => runApp(MyApp());

final possibleIcons={Icons.music_note,Icons.videogame_asset,Icons.gamepad,Icons.art_track,Icons.android};

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    title:appName,
    //home:Home(),
    home:Scaffold(
        appBar:AppBar(title: Text("Long List"),),
        body:getListView()
    )
  ));
}

//Inart List
/*Widget getListView(){
  var listView= ListView(
      children: <Widget>[
      logo,
      /*Text(
          "Insomnia Art Studio",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize:30.0,
          fontFamily: 'DancingScript',
          color: Colors.deepPurple
        ),
      ),*/
      //Container(color:Colors.red,height:50),
      ListTile(
        leading:Icon(Icons.videogame_asset),
        title:Text("Aldhair Vera"),
        subtitle: Text("CompSci and GameDev"),
        trailing: Icon(Icons.wb_sunny),
        onTap: ()=> debugPrint("Aldhair is pressed"),
      ),
      ListTile(
        leading:Icon(Icons.android),
        title:Text("Nancy Rojas"),
        subtitle: Text("Technical Artist jr. and Front End Web Dev"),
        trailing: Icon(Icons.wb_sunny),
        onTap: ()=> debugPrint("Nancy is pressed"),
      ),
      ListTile(
        leading:Icon(Icons.art_track),
        title:Text("Gabriela Palma"),
        subtitle: Text("Lead Artist"),
        trailing: Icon(Icons.wb_sunny),
        onTap: ()=> debugPrint("Yumi is pressed"),
      ),
      ListTile(
        leading:Icon(Icons.gamepad),
        title:Text("Carlos Montaño"),
        subtitle: Text("Lead Programmer"),
        trailing: Icon(Icons.wb_sunny),
        onTap: ()=> debugPrint("Carlos is pressed"),
      ),
      ListTile(
        leading:Icon(Icons.music_note),
        title:Text("Alfredo San Martin"),
        subtitle: Text("CEO and Music Producer"),
        trailing: Icon(Icons.wb_sunny),
        onTap: ()=> debugPrint("Alfredo is pressed"),
      ),

    ]
  );
  return listView;
}*/

//Step 1: Prepare Data Source
List<String> getListElements(){
  var items=List<String>.generate(1000,(counter)=>"Item $counter");
  return items;
}

//Step 2: Convert Data Source into WidgetsApp
Widget getListView(){
  var listItems=getListElements();

  var listView= ListView.builder(
    itemBuilder: (context,index){
      return ListTile(
          leading:Icon(icons()),
          title:
            Container(
              child: Text(
                  listItems[index],
                    style: TextStyle(
                    //color: Colors.deepPurple,
                    color: color(),)
              )
            ),
          onTap: ()=> debugPrint('${listItems[index]} was tapped'),
      );
    },
  );
  return listView;
}

int RandColor(int _val)
{
  var value= new Random();
  return value.nextInt(_val);
}

MaterialColor color(){
  MaterialColor temp=Colors.cyan;
  /*switch(RandColor())
  {
    case 0:
      temp=colorA;
      break;
    case 1:
      temp=colorB;
      break;
    case 2:
      temp=colorC;
      break;
    case 3:
      temp=colorD;
      break;
  }*/
  return colors.elementAt(RandColor(colors.length));
}

IconData icons(){
  return possibleIcons.elementAt(RandColor(possibleIcons.length));
}