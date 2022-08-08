// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FavoriteMusic extends StatelessWidget {
  const FavoriteMusic({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 1000,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Music Title $index'),
          leading: Icon(Icons.music_note),
          trailing: Icon(Icons.play_arrow),
        );
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}
