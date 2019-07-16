import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:repository/repository.dart';

abstract class TopStoriesAction extends Equatable {
  TopStoriesAction([List props = const []]) : super(props);
}

class GetTopStories extends TopStoriesAction {
  final Completer completer;

  GetTopStories({Completer completer}) : this.completer = completer ?? Completer();

  @override
  String toString() => 'GetTopStories';
}

class LoadingTopStories extends TopStoriesAction {
  @override
  String toString() => 'LoadingTopStories';
}

class SuccessfulTopStories extends TopStoriesAction {
  final List<Story> stories;

  SuccessfulTopStories(this.stories) : super([stories]);

  @override
  String toString() => 'SuccessfulTopStories { stories: ${stories.join(",")} }';
}

class FailedTopStories extends TopStoriesAction {
  final Error error;

  FailedTopStories(this.error) : super([error]);

  @override
  String toString() => 'FailedTopStories { error: $error }';
}