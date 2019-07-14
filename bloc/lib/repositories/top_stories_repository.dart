import 'package:flutter/foundation.dart';
import 'package:repository/repository.dart';

class TopStoriesRepository {
  final TopStoriesAPI api;

  TopStoriesRepository({
    @required this.api
  });

  Future<List<Story>> topStories() async {
    var topStories = await api.fetchTopStories();
    return topStories.results.toList();
  }
}