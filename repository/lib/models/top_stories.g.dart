// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_stories.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TopStories> _$topStoriesSerializer = new _$TopStoriesSerializer();

class _$TopStoriesSerializer implements StructuredSerializer<TopStories> {
  @override
  final Iterable<Type> types = const [TopStories, _$TopStories];
  @override
  final String wireName = 'TopStories';

  @override
  Iterable<Object> serialize(Serializers serializers, TopStories object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Story)])),
    ];

    return result;
  }

  @override
  TopStories deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TopStoriesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Story)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$TopStories extends TopStories {
  @override
  final BuiltList<Story> results;

  factory _$TopStories([void Function(TopStoriesBuilder) updates]) =>
      (new TopStoriesBuilder()..update(updates)).build();

  _$TopStories._({this.results}) : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('TopStories', 'results');
    }
  }

  @override
  TopStories rebuild(void Function(TopStoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TopStoriesBuilder toBuilder() => new TopStoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TopStories && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TopStories')..add('results', results))
        .toString();
  }
}

class TopStoriesBuilder implements Builder<TopStories, TopStoriesBuilder> {
  _$TopStories _$v;

  ListBuilder<Story> _results;
  ListBuilder<Story> get results =>
      _$this._results ??= new ListBuilder<Story>();
  set results(ListBuilder<Story> results) => _$this._results = results;

  TopStoriesBuilder();

  TopStoriesBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TopStories other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TopStories;
  }

  @override
  void update(void Function(TopStoriesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TopStories build() {
    _$TopStories _$result;
    try {
      _$result = _$v ?? new _$TopStories._(results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TopStories', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
