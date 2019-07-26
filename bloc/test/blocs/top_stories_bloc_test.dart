import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutterritory/blocs/top_stories_bloc.dart';
import 'package:flutterritory/events/top_stories_event.dart';
import 'package:flutterritory/states/top_stories_state.dart';
import 'package:mockito/mockito.dart';
import 'package:repository/repository.dart';

class TopStoriesRepositoryMock extends Mock implements TopStoriesRepository {}

class TopStoriesError implements Error {
  @override
  StackTrace get stackTrace => null;
} 

main() {
  final repository = TopStoriesRepositoryMock();
  final bloc = TopStoriesBloc(repository: repository);

  group("initialState", () {
    test("is empty SuccessfulTopStories", () {
      expect(bloc.initialState, SuccessfulTopStories([]));
    });
  });

  group("mapEventToState", () {
    group("GetTopStories", () {
      final event = GetTopStories();

      test("is successful", () {
        final stories = [
          Story((b) => b
          ..section = "section"
          ..subsection = "subsection"
          ..title = "title"
          ..abstract = "abstract"
          ..byline = "byline"
          ..url = "url"
          )
        ];

        when(repository.topStories()).thenAnswer((_) => Future.value(stories));

        expect(bloc.mapEventToState(event), emitsInOrder([LoadingTopStories(), SuccessfulTopStories(stories)]));
        Timer.run(expectAsync0(() => expect(event.completer.isCompleted, isTrue)));
      });

      test("is failure", () {
        final error = TopStoriesError();

        when(repository.topStories()).thenAnswer((_) => Future.error(error));

        expect(bloc.mapEventToState(event), emitsInOrder([LoadingTopStories(), FailedTopStories(error)]));
        Timer.run(expectAsync0(() => expect(event.completer.isCompleted, isTrue)));
      });
    });
  });
}