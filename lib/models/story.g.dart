// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Story> _$storySerializer = new _$StorySerializer();

class _$StorySerializer implements StructuredSerializer<Story> {
  @override
  final Iterable<Type> types = const [Story, _$Story];
  @override
  final String wireName = 'Story';

  @override
  Iterable serialize(Serializers serializers, Story object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'section',
      serializers.serialize(object.section,
          specifiedType: const FullType(String)),
      'subsection',
      serializers.serialize(object.subsection,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'abstract',
      serializers.serialize(object.abstract,
          specifiedType: const FullType(String)),
      'byline',
      serializers.serialize(object.byline,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'multimedia',
      serializers.serialize(object.multimedia,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Multimedia)])),
    ];

    return result;
  }

  @override
  Story deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'section':
          result.section = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'subsection':
          result.subsection = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'abstract':
          result.abstract = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'byline':
          result.byline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'multimedia':
          result.multimedia.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Multimedia)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Story extends Story {
  @override
  final String section;
  @override
  final String subsection;
  @override
  final String title;
  @override
  final String abstract;
  @override
  final String byline;
  @override
  final String url;
  @override
  final BuiltList<Multimedia> multimedia;

  factory _$Story([void Function(StoryBuilder) updates]) =>
      (new StoryBuilder()..update(updates)).build();

  _$Story._(
      {this.section,
      this.subsection,
      this.title,
      this.abstract,
      this.byline,
      this.url,
      this.multimedia})
      : super._() {
    if (section == null) {
      throw new BuiltValueNullFieldError('Story', 'section');
    }
    if (subsection == null) {
      throw new BuiltValueNullFieldError('Story', 'subsection');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Story', 'title');
    }
    if (abstract == null) {
      throw new BuiltValueNullFieldError('Story', 'abstract');
    }
    if (byline == null) {
      throw new BuiltValueNullFieldError('Story', 'byline');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Story', 'url');
    }
    if (multimedia == null) {
      throw new BuiltValueNullFieldError('Story', 'multimedia');
    }
  }

  @override
  Story rebuild(void Function(StoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoryBuilder toBuilder() => new StoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Story &&
        section == other.section &&
        subsection == other.subsection &&
        title == other.title &&
        abstract == other.abstract &&
        byline == other.byline &&
        url == other.url &&
        multimedia == other.multimedia;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, section.hashCode), subsection.hashCode),
                        title.hashCode),
                    abstract.hashCode),
                byline.hashCode),
            url.hashCode),
        multimedia.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Story')
          ..add('section', section)
          ..add('subsection', subsection)
          ..add('title', title)
          ..add('abstract', abstract)
          ..add('byline', byline)
          ..add('url', url)
          ..add('multimedia', multimedia))
        .toString();
  }
}

class StoryBuilder implements Builder<Story, StoryBuilder> {
  _$Story _$v;

  String _section;
  String get section => _$this._section;
  set section(String section) => _$this._section = section;

  String _subsection;
  String get subsection => _$this._subsection;
  set subsection(String subsection) => _$this._subsection = subsection;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _abstract;
  String get abstract => _$this._abstract;
  set abstract(String abstract) => _$this._abstract = abstract;

  String _byline;
  String get byline => _$this._byline;
  set byline(String byline) => _$this._byline = byline;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ListBuilder<Multimedia> _multimedia;
  ListBuilder<Multimedia> get multimedia =>
      _$this._multimedia ??= new ListBuilder<Multimedia>();
  set multimedia(ListBuilder<Multimedia> multimedia) =>
      _$this._multimedia = multimedia;

  StoryBuilder();

  StoryBuilder get _$this {
    if (_$v != null) {
      _section = _$v.section;
      _subsection = _$v.subsection;
      _title = _$v.title;
      _abstract = _$v.abstract;
      _byline = _$v.byline;
      _url = _$v.url;
      _multimedia = _$v.multimedia?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Story other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Story;
  }

  @override
  void update(void Function(StoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Story build() {
    _$Story _$result;
    try {
      _$result = _$v ??
          new _$Story._(
              section: section,
              subsection: subsection,
              title: title,
              abstract: abstract,
              byline: byline,
              url: url,
              multimedia: multimedia.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'multimedia';
        multimedia.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Story', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
