import 'package:flutter/foundation.dart';
import 'package:flutterritory/models/multimedia.dart';

@immutable
class Story {
  final String section;
  final String subsection;
  final String title;
  final String abstract;
  final String byline;
  final String url;
  final List<Multimedia> multimedia;

  Story(this.section, this.subsection, this.title, this.abstract, this.byline, this.url, this.multimedia);
}