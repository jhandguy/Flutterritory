import 'package:flutter/material.dart';
import 'package:flutterritory/change_notifiers/top_stories_change_notifier.dart';
import 'package:flutterritory/widgets/flutterritory_widget.dart';
import 'package:repository/repository.dart';

void main() {
  final changeNotifier = TopStoriesChangeNotifier(repository: TopStoriesRepository());

  runApp(
    FlutterritoryWidget(
      title: 'Flutterritory',
      changeNotifier: changeNotifier,
    )
  );
}