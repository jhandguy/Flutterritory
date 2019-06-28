import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'multimedia.g.dart';

abstract class Multimedia implements Built<Multimedia, MultimediaBuilder> {

  String get url;
  String get format;

  Multimedia._();
  factory Multimedia([updates(MultimediaBuilder b)]) = _$Multimedia;
  
  static Serializer<Multimedia> get serializer => _$multimediaSerializer;
}
