import 'package:flutter/material.dart';
import './app_Screens/home.dart';

final appName="Exploring UI Widgets";

final appScreenText="Widget app";
final appBarColor=Colors.grey[600];


//void main() => runApp(MyApp());

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    title:appName,
    home:Home(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  }
}

