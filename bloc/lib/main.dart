import 'package:flutter/material.dart';
import 'package:flutterritory/repositories/top_stories_repository.dart';
import 'package:flutterritory/widgets/top_stories_widget.dart';
import 'package:repository/repository.dart';

void main() {
  final repository = TopStoriesRepository(api: TopStoriesAPI());
  runApp(
    Flutteritory(
      title: 'Flutteritory'
    )
  );
}

class Flutteritory extends StatelessWidget {
  final String title;

  Flutteritory({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData.dark(),
      home: TopStoriesWidget(title: title),
    );
  }
}