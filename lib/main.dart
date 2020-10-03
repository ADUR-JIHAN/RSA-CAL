import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/screen/MainScreen.dart';

void main() => runApp(
    MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RSA Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfileScreen(),
    );
  }
}