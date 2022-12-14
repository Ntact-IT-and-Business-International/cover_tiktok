import 'package:flutter/material.dart';
import 'package:cover/models/cover.dart';
import 'package:cover/widgets/leftItems.dart';
import 'package:cover/widgets/rightItems.dart';
import 'package:cover/widgets/videoPlayer.dart';

class TikTokVideo extends StatelessWidget {
  final ItemListData data;

  const TikTokVideo({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CoverVideoPlayer(url: data.itemInfos!.video!.urls![0]),
          title(),
          RightItems(
            comments: data.itemInfos!.commentCount.toString(),
            userImg: data.authorInfos!.covers![0],
            favorite: data.itemInfos!.diggCount!,
            coverImg: data.musicInfos!.covers![0],
          ),
          LeftItems(
            description: data.itemInfos!.text!,
            musicName: data.musicInfos!.musicName!,
            authorName: data.musicInfos!.authorName!,
            userName: data.authorInfos!.uniqueId!,
          )
        ],
      ),
    );
  }

  Widget title() => Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 28.0),
          child: Text(
            "Trending | For You",
            style: TextStyle(color: Colors.white, fontSize: 19.0),
          ),
        ),
      );
}
