import 'package:flutter/material.dart';
import 'package:flutterritory/change_notifiers/top_stories_change_notifier.dart';
import 'package:flutterritory/widgets/top_stories_widget.dart';
import 'package:provider/provider.dart';
import 'package:repository/repository.dart';

void main() {
  final changeNotifier = TopStoriesChangeNotifier(repository: TopStoriesRepository());

  runApp(
    Flutteritory(
      title: 'Flutteritory',
      changeNotifier: changeNotifier,
    )
  );
}

class Flutteritory extends StatelessWidget {
  final String title;
  final TopStoriesChangeNotifier changeNotifier;

  Flutteritory({Key key, this.title, this.changeNotifier}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData.dark(),
      home: ChangeNotifierProvider(
        builder: (_) => changeNotifier,
        child: TopStoriesWidget(title: title),
      ),
    );
  }
}