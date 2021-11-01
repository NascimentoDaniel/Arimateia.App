import 'package:flutter/material.dart';
import 'package:arimateiapp/Pages/LoginPage.dart';



void main() => runApp(MyApp());
  
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Arimeteia App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: LoginPage(),
    );
  }
}