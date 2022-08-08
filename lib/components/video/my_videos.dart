import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:cover/models/cover.dart';
import 'package:cover/config/api.dart';
import 'package:http/http.dart' as http;
import 'package:cover/screens/covervideo.dart';

class MyVideos extends StatefulWidget {
  const MyVideos({Key? key}) : super(key: key);
  @override
  _MyVideosState createState() => _MyVideosState();
}

class _MyVideosState extends State<MyVideos> {
  PageController pageController = PageController();
  RequestController api = RequestController();
  List<Widget> tikTokVideos = [];

  getMyVideos() async {
    var cookies = await api.getCookie();
    api.setCookie(cookies);
    try {
      var response = await http.get(
        Uri.parse(api.url),
        headers: api.headers,
      );
      Cover cover = Cover.fromJson(jsonDecode(response.body));
      cover.body!.itemListData!.forEach(
        (item) {
          setState(() {
            tikTokVideos.add(TikTokVideo(data: item));
          });
        },
      );
    } catch (ex) {
      print(ex);
    }
  }

  @override
  void initState() {
    super.initState();
    getMyVideos();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      controller: pageController,
      children: tikTokVideos.length == 0
          ? <Widget>[
              Container(
                color: Colors.black,
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            ]
          : tikTokVideos,
    );
  }
}
