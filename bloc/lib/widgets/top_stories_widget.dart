import 'package:flutter/material.dart';
import 'package:flutterritory/blocs/top_stories_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterritory/states/top_stories_state.dart';

class TopStoriesWidget extends StatefulWidget {
  TopStoriesWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<TopStoriesWidget> createState() => _TopStoriesState();
}

class _TopStoriesState extends State<TopStoriesWidget> {
  TopStoriesBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<TopStoriesBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, TopStoriesState state) {
          if (state is EmptyTopStories) {
            return Text("empty");
          }
          if (state is LoadingTopStories) {
            return Text("loading...");
          }
          if (state is SuccessfulTopStories) {
            return Text(state.stories.join(", "));
          }
          if (state is FailedTopStories) {
            return Text(state.message);
          }
          return Text("");
        },
      ),
    );
  }
}