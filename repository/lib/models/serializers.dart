import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';
import 'package:repository/models/multimedia.dart';
import 'package:repository/models/story.dart';
import 'package:repository/models/top_stories.dart';

part 'serializers.g.dart';

@SerializersFor([
  TopStories,
])

final Serializers serializers = _$serializers;

Serializers standardSerializers = 
(serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();