import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  Widget get topPart => Container(
        height: 100.0,
        padding: EdgeInsets.only(bottom: 15.0),
        color: Colors.yellow,
      );

  Widget get middlePart => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            videoDescription,
            actionsToolbar,
          ],
        ),
      );

  Widget get bottomPart => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List<Widget>.generate(
          5,
          (index) => Container(
            width: 40.0,
            height: 40.0,
            color: Colors.purple[300],
          ),
        ),
      );

  Widget get videoDescription => Expanded(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 10.0,
              color: Colors.green[300],
              margin: EdgeInsets.only(top: 10)),
          Container(
              height: 10.0,
              color: Colors.green[300],
              margin: EdgeInsets.only(top: 10)),
          Container(
              height: 10.0,
              color: Colors.green[300],
              margin: EdgeInsets.only(top: 10))
        ],
      ));

  Widget get actionsToolbar => Container(
        width: 100.0,
        color: Colors.red[300],
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List<Widget>.generate(
              5,
              (index) => Container(
                    width: 60.0,
                    height: 60.0,
                    color: Colors.blue[300],
                    margin: EdgeInsets.only(top: 20.0),
                  )),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //top part
          topPart,
          //middle part
          middlePart,
          //bottom part
          bottomPart,
        ],
      ),
    );
  }
}
