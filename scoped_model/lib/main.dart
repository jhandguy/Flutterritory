import 'package:flutter/material.dart';
import 'package:flutterritory/models/top_stories_model.dart';
import 'package:flutterritory/widgets/app_widget.dart';
import 'package:repository/repository.dart';

main() {
  final model = TopStoriesModel(repository: TopStoriesRepository());

  runApp(
    AppWidget(
      title: 'Flutterritory',
      model: model,
    )
  );
}