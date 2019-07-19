import 'package:flutter/material.dart';
import 'package:flutterritory/models/top_stories_model.dart';
import 'package:flutterritory/widgets/top_stories_widget.dart';
import 'package:repository/repository.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  final model = TopStoriesModel(repository: TopStoriesRepository());

  runApp(
    Flutterritory(
      title: 'Flutterritory',
      model: model,
    )
  );
}

class Flutterritory extends StatelessWidget {
  final String title;
  final TopStoriesModel model;

  Flutterritory({Key key, this.title, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData.dark(),
      home: ScopedModel(
        model: model,
        child: TopStoriesWidget(title: title),
      ),
    );
  }
}