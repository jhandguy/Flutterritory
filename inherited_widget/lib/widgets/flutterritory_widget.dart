import 'package:flutter/material.dart';

class FlutterritoryWidget extends StatelessWidget {
  final String title;

  FlutterritoryWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData.dark(),
      home: Center(child: Text(title)),
    );
  }
}