// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multimedia.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Multimedia> _$multimediaSerializer = new _$MultimediaSerializer();

class _$MultimediaSerializer implements StructuredSerializer<Multimedia> {
  @override
  final Iterable<Type> types = const [Multimedia, _$Multimedia];
  @override
  final String wireName = 'Multimedia';

  @override
  Iterable serialize(Serializers serializers, Multimedia object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'format',
      serializers.serialize(object.format,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Multimedia deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MultimediaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'format':
          result.format = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Multimedia extends Multimedia {
  @override
  final String url;
  @override
  final String format;

  factory _$Multimedia([void Function(MultimediaBuilder) updates]) =>
      (new MultimediaBuilder()..update(updates)).build();

  _$Multimedia._({this.url, this.format}) : super._() {
    if (url == null) {
      throw new BuiltValueNullFieldError('Multimedia', 'url');
    }
    if (format == null) {
      throw new BuiltValueNullFieldError('Multimedia', 'format');
    }
  }

  @override
  Multimedia rebuild(void Function(MultimediaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultimediaBuilder toBuilder() => new MultimediaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Multimedia && url == other.url && format == other.format;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), format.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Multimedia')
          ..add('url', url)
          ..add('format', format))
        .toString();
  }
}

class MultimediaBuilder implements Builder<Multimedia, MultimediaBuilder> {
  _$Multimedia _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _format;
  String get format => _$this._format;
  set format(String format) => _$this._format = format;

  MultimediaBuilder();

  MultimediaBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _format = _$v.format;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Multimedia other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Multimedia;
  }

  @override
  void update(void Function(MultimediaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Multimedia build() {
    final _$result = _$v ?? new _$Multimedia._(url: url, format: format);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
