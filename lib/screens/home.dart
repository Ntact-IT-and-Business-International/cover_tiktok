import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cover/screens/trending.dart';
import 'package:cover/components/video/my_videos.dart';
import 'package:cover/components/profile.dart/user_profile.dart';
import '../components/video/record_video.dart';
import 'package:cover/components/favorite/favorite.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: <Widget>[
          Trending(),
          MyVideos(),
          AddFile(),
          FavoriteMusic(),
          UserProfile(),
        ],
        onPageChanged: (int index) {
          setState(
            () {
              currentIndex = index;
            },
          );
        },
      ),
      bottomNavigationBar: bottomItems(),
    );
  }

  BottomNavigationBar bottomItems() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.pink[300],
      unselectedItemColor: Colors.white,
      elevation: 0.5,
      onTap: (int index) {
        setState(
          () {
            currentIndex = index;
          },
        );
      },
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "search",
        ),
        BottomNavigationBarItem(
          icon: tikTokLog(),
          label: "add",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.indeterminate_check_box),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.userAlt),
          label: "profile",
        ),
      ],
    );
  }

  Widget tikTokLog() {
    return Container(
      width: 45.0,
      height: 27.0,
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10.0),
            width: 30.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Colors.pink[300],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            width: 30.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Colors.blue[200],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            width: 30.0,
            height: double.infinity,
            child: Icon(Icons.add, color: Colors.black),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
