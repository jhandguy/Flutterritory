import 'package:flutter/foundation.dart';
import 'package:flutterritory/models/format.dart';

@immutable
class Multimedia {
  final String url;
  final Format format;

  Multimedia(this.url, this.format);
}
