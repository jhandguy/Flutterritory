import 'package:repository/models/top_stories.dart';
import 'package:http/http.dart' as http;

class TopStoriesAPI {
  static const String url = "https://api.nytimes.com/svc/topstories/v2/home.json";
  static const MapEntry<String, String> apiKey = MapEntry("api-key", "de87f25eb97b4f038d8360e0de22e1dd");

  Future<TopStories> fetchTopStories() async {
    final response = await http.get("$url?${apiKey.key}=${apiKey.value}");
    if (response.statusCode != 200) {
      return Future.error("Something went wrong.");
    }
    return TopStories.fromJson(response.body);
  }
}