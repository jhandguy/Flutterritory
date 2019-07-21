import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:repository/repository.dart';
import 'package:scoped_model/scoped_model.dart';

class TopStoriesModel extends Model {
  final TopStoriesRepository repository;

  TopStoriesModel({
    @required this.repository,
  });

  List<Story> _stories = [];
  List<Story> get stories => _stories;

  Error _error;
  Error get error => _error;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  static TopStoriesModel of(BuildContext context) => 
      ScopedModel.of<TopStoriesModel>(context);

  Future topStories() {
    _isLoading = true;
    notifyListeners();

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
      .whenComplete(() {
        _isLoading = false;
        notifyListeners();
      });
  }
  
  @override
  void addListener(listener) {
    super.addListener(listener);
    topStories();
  }
}