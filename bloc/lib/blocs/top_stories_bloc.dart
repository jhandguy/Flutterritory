import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterritory/events/top_stories_event.dart';
import 'package:flutterritory/repositories/top_stories_repository.dart';
import 'package:flutterritory/states/top_stories_state.dart';

class TopStoriesBloc extends Bloc<TopStoriesEvent, TopStoriesState> {
  final TopStoriesRepository repository;

  TopStoriesBloc({
    @required this.repository,
  });

  @override
  TopStoriesState get initialState => EmptyTopStories();

  @override
  Stream<TopStoriesState> mapEventToState(TopStoriesEvent event) async* {
    if (event is GetTopStories) {
      try {
        yield LoadingTopStories();
        final topStories = await repository.topStories();
        yield SuccessfulTopStories(topStories);
      } catch (error) {
        yield FailedTopStories(error);
      } finally {
        event.completer.complete();
      }
    }
  }

  @override
  void onTransition(Transition<TopStoriesEvent, TopStoriesState> transition) {
    print(transition);
  }
}