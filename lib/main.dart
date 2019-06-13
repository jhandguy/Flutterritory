import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterritory/features/top_stories.dart';
import 'package:flutterritory/reducers/top_stories_reducer.dart';
import 'package:flutterritory/states/app_state.dart';
import 'package:redux/redux.dart';

void main() {
  final store = new Store<AppState>(topStoriesReducer, initialState: AppState(topStories: []));

  runApp(
    Flutteritory(
      store: store,
      title: 'Flutteritory'
    )
  );
}

class Flutteritory extends StatelessWidget {
  final Store<AppState> store;
  final String title;

  Flutteritory({Key key, this.store, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: title,
        theme: ThemeData.dark(),
        home: TopStories(title: title),
      )
    );
  }
}