import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //top part
          Container(
            height: 100.0,
            padding: EdgeInsets.only(bottom: 15.0),
            color: Colors.yellow,
          ),
          //middle part
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.green[300],
                  ),
                ),
                Container(
                  width: 100.0,
                  color: Colors.red[300],
                ),
              ],
            ),
          ),
          //bottom part
          Container(
            height: 80.0,
            color: Colors.blue[300],
          )
        ],
      ),
    );
  }
}
