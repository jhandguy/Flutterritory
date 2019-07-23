import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterritory/states/app_state.dart';
import 'package:flutterritory/widgets/top_stories_widget.dart';
import 'package:redux/redux.dart';

class FlutterritoryWidget extends StatelessWidget {
  final Store<AppState> store;
  final String title;

  FlutterritoryWidget({Key key, this.title, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: title,
        theme: ThemeData.dark(),
        home: TopStoriesWidget(title: title),
      )
    );
  }
}