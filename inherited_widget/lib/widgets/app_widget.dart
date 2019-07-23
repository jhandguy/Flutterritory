import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final String title;

  AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData.dark(),
      home: Center(child: Text(title)),
    );
  }
}