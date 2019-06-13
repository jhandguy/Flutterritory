import 'package:built_collection/built_collection.dart';
import 'package:flutterritory/actions/top_stories_action.dart';
import 'package:flutterritory/models/story.dart';
import 'package:flutterritory/states/app_state.dart';

AppState topStoriesReducer(AppState state, dynamic action) {
  if (action == GetTopStoriesAction) {
    return AppState(
      topStories: [
        Story(
          (b) => b
          ..section = "Section 1"
          ..subsection = "Subsection 1"
          ..title = "Title 1"
          ..abstract = "Abstract 1"
          ..byline = "Byline 1"
          ..url = "URL 1"
          ..multimedia = ListBuilder([])
        ),
        Story(
          (b) => b
          ..section = "Section 2"
          ..subsection = "Subsection 2"
          ..title = "Title 2"
          ..abstract = "Abstract 2"
          ..byline = "Byline 2"
          ..url = "URL 2"
          ..multimedia = ListBuilder([])
        ),
      ]
    );
  }

  return state;
}