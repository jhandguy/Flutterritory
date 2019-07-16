import 'package:flutter/material.dart';
import 'package:flutterritory/blocs/top_stories_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterritory/events/top_stories_event.dart';
import 'package:flutterritory/states/top_stories_state.dart';
import 'package:flutterritory/widgets/top_story_widget.dart';

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
          return RefreshIndicator(
            onRefresh: () {
              final event = GetTopStories();
              _bloc.dispatch(event);
              return event.completer.future;
            },
            child: _ViewModel.from(state).widget,
          );
        },
      ),
    );
  }
}

@immutable
class _ViewModel {
  final Widget widget;

  _ViewModel(this.widget);

  factory _ViewModel.from(TopStoriesState state) {
    var widget;

    if (state is LoadingTopStories) {
      widget = Center(
        child: Text("Loading..."),
      );
    }
    else if (state is FailedTopStories) {
      widget = Center(
        child: Text(state.error.toString()),
      );
    }
    else if (state is SuccessfulTopStories) {
      widget = ListView(
        children: state.stories.map((story) => TopStoryWidget(story)).toList(),
      );
    }
    else {
      throw "Unknown state $state";
    }

    return _ViewModel(widget);
  }
}