import 'package:flutter/material.dart';
import 'package:flutterritory/blocs/top_stories_bloc.dart';
import 'package:flutterritory/events/top_stories_event.dart';
import 'package:flutterritory/widgets/app_widget.dart';
import 'package:repository/repository.dart';

void main() {
  final bloc = TopStoriesBloc(repository: TopStoriesRepository());

  runApp(
    AppWidget(
      title: 'Flutterritory',
      bloc: bloc,
    )
  );

  bloc.dispatch(GetTopStories());
}