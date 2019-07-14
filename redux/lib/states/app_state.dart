import 'package:flutter/foundation.dart';
import 'package:repository/repository.dart';

@immutable
class AppState {
  final List<Story> stories;

  AppState({
    @required this.stories
  });
}