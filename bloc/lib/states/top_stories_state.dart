import 'package:equatable/equatable.dart';
import 'package:repository/repository.dart';

abstract class TopStoriesState extends Equatable {
  TopStoriesState([List props = const []]) : super(props);
}

class LoadingTopStories extends TopStoriesState {
  @override
  String toString() => 'LoadingTopStories';
}

class SuccessfulTopStories extends TopStoriesState {
  final List<Story> stories;

  SuccessfulTopStories(this.stories) : super([stories]);

  @override
  String toString() => 'SuccessfulTopStories { stories: ${stories.join(",")} }';
}

class FailedTopStories extends TopStoriesState {
  final Error error;

  FailedTopStories(this.error) : super([error]);

  @override
  String toString() => 'FailedTopStories { error: $error }';
}