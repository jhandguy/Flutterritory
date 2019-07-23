import 'package:flutter/material.dart';
import 'package:flutterritory/stores/top_stories_store.dart';
import 'package:flutterritory/widgets/flutterritory_widget.dart';
import 'package:repository/repository.dart';

void main() {
  final store = TopStoriesStore(repository: TopStoriesRepository());

  runApp(
    FlutterritoryWidget(
      title: 'Flutterritory',
      store: store,
    )
  );
}