import 'package:flutter/material.dart';
import 'package:flutterritory/stores/top_stories_store.dart';
import 'package:flutterritory/widgets/app_widget.dart';
import 'package:repository/repository.dart';

main() {
  final store = TopStoriesStore(repository: TopStoriesRepository());

  runApp(
    AppWidget(
      title: 'Flutterritory',
      store: store,
    )
  );
}