import 'package:flutter/material.dart';
import 'package:flutterritory/actions/top_stories_actions.dart';
import 'package:flutterritory/widgets/flutterritory_widget.dart';
import 'package:repository/repository.dart';
import 'package:flutterritory/middlewares/top_stories_middleware.dart';
import 'package:flutterritory/reducers/top_stories_reducer.dart';
import 'package:flutterritory/states/app_state.dart';
import 'package:redux/redux.dart';

void main() {
  final store = Store<AppState>(
    topStoriesReducer, 
    initialState: AppState(stories: [], isLoading: false),
    middleware: [
      TopStoriesMiddleWare(repository: TopStoriesRepository()),
    ]
  );

  runApp(
    FlutterritoryWidget(
      title: 'Flutterritory',
      store: store,
    )
  );

  store.dispatch(GetTopStories());
}