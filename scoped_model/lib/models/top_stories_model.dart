import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:repository/repository.dart';
import 'package:scoped_model/scoped_model.dart';

class TopStoriesModel extends Model {
  final TopStoriesRepository repository;
  List<Story> _stories = [];
  Error _error;

  List<Story> get stories => _stories;
  Error get error => _error;

  TopStoriesModel({
    @required this.repository,
  });

  static TopStoriesModel of(BuildContext context) => 
      ScopedModel.of<TopStoriesModel>(context);

  Future topStories() {
    return repository
      .topStories()
      .then((stories) {
        _stories = stories;
        _error = null;
      })
      .catchError((error) {
         _stories = [];
         _error = error;
      })
      .whenComplete(notifyListeners);
  }
  
  @override
  void addListener(listener) {
    super.addListener(listener);
    topStories();
  }
}