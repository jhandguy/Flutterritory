// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_stories_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$TopStoriesStore on _TopStoriesStore, Store {
  final _$_storiesAtom = Atom(name: '_TopStoriesStore._stories');

  @override
  List<Story> get _stories {
    _$_storiesAtom.context.enforceReadPolicy(_$_storiesAtom);
    _$_storiesAtom.reportObserved();
    return super._stories;
  }

  @override
  set _stories(List<Story> value) {
    _$_storiesAtom.context.conditionallyRunInAction(() {
      super._stories = value;
      _$_storiesAtom.reportChanged();
    }, _$_storiesAtom, name: '${_$_storiesAtom.name}_set');
  }

  final _$_errorAtom = Atom(name: '_TopStoriesStore._error');

  @override
  Error get _error {
    _$_errorAtom.context.enforceReadPolicy(_$_errorAtom);
    _$_errorAtom.reportObserved();
    return super._error;
  }

  @override
  set _error(Error value) {
    _$_errorAtom.context.conditionallyRunInAction(() {
      super._error = value;
      _$_errorAtom.reportChanged();
    }, _$_errorAtom, name: '${_$_errorAtom.name}_set');
  }

  final _$_isLoadingAtom = Atom(name: '_TopStoriesStore._isLoading');

  @override
  bool get _isLoading {
    _$_isLoadingAtom.context.enforceReadPolicy(_$_isLoadingAtom);
    _$_isLoadingAtom.reportObserved();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.context.conditionallyRunInAction(() {
      super._isLoading = value;
      _$_isLoadingAtom.reportChanged();
    }, _$_isLoadingAtom, name: '${_$_isLoadingAtom.name}_set');
  }

  final _$_TopStoriesStoreActionController =
      ActionController(name: '_TopStoriesStore');

  @override
  Future topStories() {
    final _$actionInfo = _$_TopStoriesStoreActionController.startAction();
    try {
      return super.topStories();
    } finally {
      _$_TopStoriesStoreActionController.endAction(_$actionInfo);
    }
  }
}
