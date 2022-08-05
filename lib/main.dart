import 'package:flutter/material.dart';
import 'package:tiktok/screens/home.dart';

void main() => runApp(Cover());

class Cover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
