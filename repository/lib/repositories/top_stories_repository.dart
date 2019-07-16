import 'package:repository/apis/top_stories_api.dart';
import 'package:repository/models/story.dart';

class TopStoriesRepository {
  final TopStoriesAPI api;

  TopStoriesRepository({api}) : this.api = api ?? TopStoriesAPI();

  Future<List<Story>> topStories() async {
    var topStories = await api.fetchTopStories();
    return topStories.results.toList();
  }
}