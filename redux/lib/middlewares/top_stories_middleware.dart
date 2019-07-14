import 'package:flutterritory/actions/top_stories_actions.dart';
import 'package:repository/apis/top_stories_api.dart';
import 'package:flutterritory/states/app_state.dart';
import 'package:redux/redux.dart';
import 'package:async/async.dart';

class TopStoriesMiddleWare extends MiddlewareClass<AppState> {
  final TopStoriesAPI api;
  CancelableOperation<Store<AppState>> _operation;

  TopStoriesMiddleWare(this.api);

  @override
  call(Store<AppState> store, dynamic action, NextDispatcher next) {
    if (action is TopStoriesGetAction) {
      _operation?.cancel();
      
      _operation = CancelableOperation.fromFuture(
        api.fetchTopStories()
        .then((topStories) => store.dispatch(TopStoriesResultsAction(topStories.results.asList())))
        .catchError((e, t) => store.dispatch(TopStoriesErrorAction()))
        .then((f) {
          action.completer.complete();
          return store;
        })
      );
    }

    next(action);
  }
}