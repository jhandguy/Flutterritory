import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:repository/repository.dart';

part 'top_stories_store.g.dart';

class TopStoriesStore = _TopStoriesStore with _$TopStoriesStore;

abstract class _TopStoriesStore with Store {
  final TopStoriesRepository repository;

  _TopStoriesStore({
    @required this.repository,
  });
  
  @observable
  List<Story> _stories = [];
  List<Story> get stories => _stories;
  
  @observable
  Error _error;
  Error get error => _error;
  
  @observable
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  @action
  Future topStories() {
    _isLoading = true;

    return repository
      .topStories()
      .then((stories) {
        _stories = stories;
        _error = null;
      })
      .catchError((error) {
        _stories = [];
        error = error;
      })
      .whenComplete(() {
        _isLoading = false;
      });
  }
}