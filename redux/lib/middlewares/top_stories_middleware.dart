import 'package:flutter/foundation.dart';
import 'package:flutterritory/actions/top_stories_actions.dart';
import 'package:repository/repository.dart';
import 'package:flutterritory/states/app_state.dart';
import 'package:redux/redux.dart';
import 'package:async/async.dart';

class TopStoriesMiddleWare extends MiddlewareClass<AppState> {
  final TopStoriesRepository repository;
  CancelableOperation _operation;

  TopStoriesMiddleWare({
    @required this.repository,
  });

  @override
  call(Store<AppState> store, dynamic action, NextDispatcher next) {
    if (action is GetTopStories) {
      _operation?.cancel();
      
      store.dispatch(LoadingTopStories());

      _operation = CancelableOperation.fromFuture(
        repository.topStories()
        .then((stories) => store.dispatch(SuccessfulTopStories(stories)))
        .catchError((error) => store.dispatch(FailedTopStories(error)))
        .whenComplete(action.completer.complete)
      );
    }

    next(action);
  }
}