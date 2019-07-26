import 'package:flutter/material.dart';
import 'package:flutterritory/change_notifiers/top_stories_change_notifier.dart';
import 'package:flutterritory/widgets/app_widget.dart';
import 'package:repository/repository.dart';

main() {
  final changeNotifier = TopStoriesChangeNotifier(repository: TopStoriesRepository());

  runApp(
    AppWidget(
      title: 'Flutterritory',
      changeNotifier: changeNotifier,
    )
  );
}