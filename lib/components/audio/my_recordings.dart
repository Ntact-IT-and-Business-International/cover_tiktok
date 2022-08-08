// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyRecordings extends StatelessWidget {
  const MyRecordings({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 11,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Music Title $index'),
          leading: Icon(Icons.mic_rounded),
          trailing: Icon(Icons.play_arrow),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}
