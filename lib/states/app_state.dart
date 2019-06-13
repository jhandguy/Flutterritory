import 'package:flutter/foundation.dart';
import 'package:flutterritory/models/story.dart';

@immutable
class AppState {
  final List<Story> topStories;

  AppState({
    @required this.topStories
  });
}