import 'dart:async';

import 'package:flutterritory/models/story.dart';

class TopStoriesGetAction {
  final Completer completer;

  TopStoriesGetAction({Completer completer}) : this.completer = completer ?? Completer();
}

class TopStoriesResultsAction {
  final List<Story> results;

  TopStoriesResultsAction(this.results);
}

class TopStoriesErrorAction {}