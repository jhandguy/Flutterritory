import 'package:flutter/material.dart';
import 'package:flutterritory/widgets/top_stories_widget.dart';

class AppWidget extends StatelessWidget {
  final String title;

  AppWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData.dark(),
      home: TopStoriesWidget(title: title),
    );
  }
}