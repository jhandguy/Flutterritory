import 'package:equatable/equatable.dart';
import 'package:repository/repository.dart';

abstract class TopStoriesState extends Equatable {
  TopStoriesState([List props = const []]) : super(props);
}

class EmptyTopStories extends TopStoriesState {
  @override
  String toString() => 'TopStoriesStateEmpty';
}

class LoadingTopStories extends TopStoriesState {
  @override
  String toString() => 'TopStoriesStateLoading';
}

class SuccessfulTopStories extends TopStoriesState {
  final List<Story> stories;

  SuccessfulTopStories(this.stories) : super([stories]);

  @override
  String toString() => 'SuccessTopStories { stories: ${stories.join(",")} }';
}

class FailedTopStories extends TopStoriesState {
  final String message;

  FailedTopStories(this.message) : super([message]);

  @override
  String toString() => 'FailedTopStories { message: $message }';
}