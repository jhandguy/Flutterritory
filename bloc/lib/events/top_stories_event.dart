import 'package:equatable/equatable.dart';

abstract class TopStoriesEvent extends Equatable {
  TopStoriesEvent([List props = const []]) : super(props);
}

class GetTopStories extends TopStoriesEvent {
  GetTopStories() : super();

  @override
  String toString() => 'GetTopStories';
}