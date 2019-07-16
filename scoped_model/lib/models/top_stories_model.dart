import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:repository/repository.dart';
import 'package:scoped_model/scoped_model.dart';

class TopStoriesModel extends Model {
  final TopStoriesRepository repository;
  List<Story> _stories = [];

  List<Story> get stories => _stories;

  TopStoriesModel({
    @required this.repository,
  });

  static TopStoriesModel of(BuildContext context) => 
      ScopedModel.of<TopStoriesModel>(context);

  Future topStories() {
    return repository
      .topStories()
      .then((stories) => _stories = stories)
      .catchError((error) => _stories = [])
      .whenComplete(notifyListeners);
  }
  
  @override
  void addListener(listener) {
    super.addListener(listener);
    topStories();
  }
}