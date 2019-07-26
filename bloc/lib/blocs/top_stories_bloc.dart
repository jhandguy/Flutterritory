import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutterritory/events/top_stories_event.dart';
import 'package:flutterritory/states/top_stories_state.dart';
import 'package:repository/repository.dart';

class TopStoriesBloc extends Bloc<TopStoriesEvent, TopStoriesState> {
  final TopStoriesRepository repository;

  TopStoriesBloc({
    @required this.repository,
  });

  @override
  TopStoriesState get initialState => SuccessfulTopStories([]);

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
  onTransition(Transition<TopStoriesEvent, TopStoriesState> transition) {
    print(transition);
  }
}