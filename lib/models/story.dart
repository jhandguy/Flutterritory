import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:flutterritory/models/multimedia.dart';

part 'story.g.dart';

abstract class Story implements Built<Story, StoryBuilder> {
  static Serializer<Story> get serializer => _$storySerializer;

  String get section;
  String get subsection;
  String get title;
  String get abstract;
  String get byline;
  String get url;
  BuiltList<Multimedia> get multimedia;

  Story._();
  factory Story([updates(StoryBuilder b)]) = _$Story;
}