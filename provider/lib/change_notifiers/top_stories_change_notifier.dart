import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:repository/repository.dart';

class TopStoriesChangeNotifier with ChangeNotifier {
  final TopStoriesRepository repository;

  TopStoriesChangeNotifier({
    @required this.repository,
  });

  List<Story> _stories = [];
  List<Story> get stories => _stories;

  Error _error;
  Error get error => _error;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  static TopStoriesChangeNotifier of(BuildContext context) => 
      Provider.of<TopStoriesChangeNotifier>(context);

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
  addListener(listener) {
    super.addListener(listener);
    topStories();
  }
}