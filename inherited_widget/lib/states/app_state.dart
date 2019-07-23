import 'package:flutter/foundation.dart';
import 'package:repository/repository.dart';

@immutable
class AppState {
  final List<Story> stories;
  final bool isLoading;
  final Error error;

  AppState({
    @required this.stories,
    @required this.isLoading,
    this.error,
  });
}