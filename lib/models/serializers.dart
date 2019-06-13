import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/serializer.dart';
import 'package:flutterritory/models/multimedia.dart';
import 'package:flutterritory/models/story.dart';
import 'package:flutterritory/models/top_stories.dart';

part 'serializers.g.dart';

@SerializersFor([
  TopStories,
])

final Serializers serializers = _$serializers;

Serializers standardSerializers = 
(serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();