import 'package:flutter/material.dart';
import './app_Screens/home.dart';

final appName="Exploring UI Widgets";

final appScreenText="Widget app";
final appBarColor=Colors.grey[600];

AssetImage logoAsset=AssetImage('Assets/INART_Logo.png');
Image logo=Image(image:logoAsset,width: 250.0,height:300.0,);

//void main() => runApp(MyApp());

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    title:appName,
    //home:Home(),
    home:Scaffold(
      body:getListView()
    )
  ));
}

Widget getListView(){
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
}