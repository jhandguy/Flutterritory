import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_logging/redux_logging.dart';
import 'package:flutterritory/actions/top_stories_actions.dart';
import 'package:flutterritory/apis/top_stories_api.dart';
import 'package:flutterritory/middlewares/top_stories_middleware.dart';
import 'package:flutterritory/widgets/top_stories_widget.dart';
import 'package:flutterritory/reducers/top_stories_reducer.dart';
import 'package:flutterritory/states/app_state.dart';
import 'package:redux/redux.dart';

void main() {
  final api = TopStoriesAPI();
  final store = Store<AppState>(
    topStoriesReducer, 
    initialState: AppState(stories: []),
    middleware: [
      LoggingMiddleware.printer(),
      TopStoriesMiddleWare(api),
    ]);

  runApp(
    Flutteritory(
      store: store,
      title: 'Flutteritory'
    )
  );

  store.dispatch(TopStoriesGetAction());
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
        home: TopStoriesWidget(title: title),
      )
    );
  }
}