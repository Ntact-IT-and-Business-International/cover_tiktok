import 'package:cover/components/favorite/favorite.dart';
import 'package:cover/components/audio/my_recordings.dart';
import 'package:cover/components/video/my_videos.dart';
import 'package:cover/components/profile.dart/user_profile.dart';
import 'package:flutter/material.dart';
import '../components/video/record_video.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyStatefulWidget();
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MyRecordings(),
    MyVideos(),
    AddFile(),
    FavoriteMusic(),
    UserProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cover Muzik'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
            label: 'My Recordings',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_back),
            label: 'My Videos',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'Record',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_purple500),
            label: 'My Favorites',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Profile',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
