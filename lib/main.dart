import 'package:cover/shared/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:cover/screens/home.dart';

void main() => runApp(Cover());

class Cover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cover Music',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNav(),
    );
  }
}
