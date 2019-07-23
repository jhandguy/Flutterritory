import 'package:flutter/material.dart';
import 'package:flutterritory/change_notifiers/top_stories_change_notifier.dart';
import 'package:flutterritory/widgets/top_stories_widget.dart';
import 'package:provider/provider.dart';

class FlutterritoryWidget extends StatelessWidget {
  final String title;
  final TopStoriesChangeNotifier changeNotifier;

  FlutterritoryWidget({Key key, this.title, this.changeNotifier}) : super(key: key);

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