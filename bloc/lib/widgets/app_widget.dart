import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterritory/blocs/top_stories_bloc.dart';
import 'package:flutterritory/widgets/top_stories_widget.dart';

class AppWidget extends StatelessWidget {
  final String title;
  final TopStoriesBloc bloc;

  AppWidget({Key key, this.title, this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData.dark(),
      home: BlocProvider(
          builder: (context) => bloc,
          child: TopStoriesWidget(title: title),
      ),
    );
  }
}