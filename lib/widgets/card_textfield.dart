import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard(this.backgroundColor, this.title);

  final Color backgroundColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      margin: EdgeInsets.all(10),
      child: new InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(height: 60),
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.5,
                      color: Colors.white),
                ),
                Text(
                  '02/08/2020',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w100,
                    fontSize: 12.5,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
