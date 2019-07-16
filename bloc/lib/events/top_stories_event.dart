import 'dart:async';

import 'package:equatable/equatable.dart';

abstract class TopStoriesEvent extends Equatable {
  TopStoriesEvent([List props = const []]) : super(props);
}

class GetTopStories extends TopStoriesEvent {
  final Completer completer;
  
  GetTopStories({Completer completer}) : this.completer = completer ?? Completer();

  @override
  String toString() => 'GetTopStories';
}