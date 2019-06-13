import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutterritory/models/serializers.dart';
import 'package:flutterritory/models/story.dart';
import 'dart:convert' as json;

part 'top_stories.g.dart';

abstract class TopStories implements Built<TopStories, TopStoriesBuilder> {
  static Serializer<TopStories> get serializer => _$topStoriesSerializer;

  BuiltList<Story> get results;

  TopStories._();
  factory TopStories([updates(TopStoriesBuilder b)]) = _$TopStories;
}

TopStories parseTopStories(String jsonString) {
  final jsonObject = json.jsonDecode(jsonString);
  TopStories topStories = standardSerializers.deserializeWith(TopStories.serializer, jsonObject);
  return topStories;
}