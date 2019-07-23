import 'package:flutter/material.dart';
import 'package:flutterritory/models/top_stories_model.dart';
import 'package:flutterritory/widgets/flutterritory_widget.dart';
import 'package:flutterritory/widgets/top_stories_widget.dart';
import 'package:repository/repository.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  final model = TopStoriesModel(repository: TopStoriesRepository());

  runApp(
    FlutterritoryWidget(
      title: 'Flutterritory',
      model: model,
    )
  );
}