import 'package:flutterritory/actions/top_stories_actions.dart';
import 'package:flutterritory/states/app_state.dart';

AppState topStoriesReducer(AppState state, dynamic action) {
  if (action is TopStoriesResultsAction) {
    return AppState(stories: action.results);
  }

  return state;
}