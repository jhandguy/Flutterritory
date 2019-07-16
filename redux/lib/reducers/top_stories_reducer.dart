import 'package:flutterritory/actions/top_stories_actions.dart';
import 'package:flutterritory/states/app_state.dart';

AppState topStoriesReducer(AppState state, dynamic action) {
  if (action is LoadingTopStories) {
    return AppState(stories: [], isLoading: true);
  }
  else if (action is SuccessfulTopStories) {
    return AppState(stories: action.stories, isLoading: false);
  }
  else if (action is FailedTopStories) {
    return AppState(stories: [], isLoading: false, error: action.error);
  }

  return state;
}