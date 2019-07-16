import 'package:flutter/foundation.dart';
import 'package:flutterritory/actions/top_stories_actions.dart';
import 'package:repository/repository.dart';
import 'package:flutterritory/states/app_state.dart';
import 'package:redux/redux.dart';
import 'package:async/async.dart';

class TopStoriesMiddleWare extends MiddlewareClass<AppState> {
  final TopStoriesAPI api;
  CancelableOperation<Store<AppState>> _operation;

  TopStoriesMiddleWare({
    @required this.api,
  });

  @override
  call(Store<AppState> store, dynamic action, NextDispatcher next) {
    if (action is GetTopStories) {
      _operation?.cancel();
      
      store.dispatch(LoadingTopStories());

      _operation = CancelableOperation.fromFuture(
        api.fetchTopStories()
        .then((topStories) => store.dispatch(SuccessfulTopStories(topStories.results.asList())))
        .catchError((e, t) => store.dispatch(FailedTopStories(e)))
        .then((f) {
          action.completer.complete();
          return store;
        })
      );
    }

    next(action);
  }
}