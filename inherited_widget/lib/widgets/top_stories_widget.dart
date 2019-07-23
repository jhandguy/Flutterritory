import 'package:flutter/material.dart';
import 'package:flutterritory/states/app_state.dart';
import 'package:flutterritory/widgets/app_state_widget.dart';
import 'package:flutterritory/widgets/top_story_widget.dart';

class TopStoriesWidget extends StatelessWidget {
  TopStoriesWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final widgetState = AppStateWidget.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: RefreshIndicator(
        onRefresh: () => widgetState.topStories(),
        child: _ViewModel.from(widgetState.state).widget,
      ),
    );
  }
}

@immutable
class _ViewModel {
  final Widget widget;

  _ViewModel(this.widget);

  factory _ViewModel.from(AppState state) {
    var widget;

    if (state.isLoading) {
      widget = Center(
        child: Text("Loading..."),
      );
    } 
    else if (state.error != null) {
      widget = Center(
        child: Text(state.error.toString()),
      );
    }
    else {
      widget = ListView(
        children: state.stories.map((story) => TopStoryWidget(story)).toList(),
      );
    }

    return _ViewModel(widget);
  }
}