import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../widgets/card_textfield.dart';
import '../../widgets/uploadingscreen.dart';

class AddFile extends StatefulWidget {
  const AddFile({Key? key}) : super(key: key);
  @override
  _AddFileState createState() => _AddFileState();
}

class _AddFileState extends State<AddFile> {
  List<String> labels = ["Phone", "Video", "Audio", "Document"];
  int currentIndex = 0;
  String tit = 'Upload File';
  String sub = 'Browse and chose the files you want to upload.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UploadScreen(1, '1', tit, sub)));
          },
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
        body: ListView(children: <Widget>[
          Container(
              height: MediaQuery.of(context).size.height - 185.0,
              child: ListView(
                  primary: false,
                  padding: EdgeInsets.all(0.0),
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 45.0),
                        child: Container(
                            height: MediaQuery.of(context).size.height - 300.0,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: GridView.count(
                                      crossAxisCount: 2,
                                      scrollDirection: Axis.vertical,
                                      // padding: EdgeInsets.all(25),
                                      children: <Widget>[
                                        const MyCard(
                                            Colors.blue, 'Upload Audio'),
                                        const MyCard(
                                            Colors.blue, 'Upload Video'),
                                      ],
                                    ),
                                  )
                                ]))),
                  ])),
        ]));
  }
}
