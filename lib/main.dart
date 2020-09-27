import 'package:flutter/material.dart';
import 'package:tiktok_ui/widgets/video_description.dart';
import 'package:tiktok_ui/widgets/actions_toolbar.dart';
import 'package:tiktok_ui/widgets/bottom_toolbar.dart';

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
            VideoDescription(),
            ActionsToolbar(),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            //top part
            topPart,
            //middle part
            middlePart,
            //bottom part
            BottomToolbar(),
          ],
        ),
      ),
    );
  }
}
