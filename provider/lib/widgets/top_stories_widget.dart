import 'package:flutter/material.dart';
import 'package:flutterritory/widgets/top_story_widget.dart';
import 'package:flutterritory/change_notifiers/top_stories_change_notifier.dart';

class TopStoriesWidget extends StatelessWidget {
  TopStoriesWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final changeNotifier = TopStoriesChangeNotifier.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: RefreshIndicator(
        onRefresh: changeNotifier.topStories,
        child: _ViewModel.from(changeNotifier).widget,
      ),
    );
  }
}

@immutable
class _ViewModel {
  final Widget widget;

  _ViewModel(this.widget);

  factory _ViewModel.from(TopStoriesChangeNotifier changeNotifier) {
    var widget;

    if (changeNotifier.isLoading) {
      widget = Center(
        child: Text("Loading..."),
      );
    }
    else if (changeNotifier.error != null) {
      widget = Center(
        child: Text(changeNotifier.error.toString()),
      );
    }
    else {
      widget = ListView(
        children: changeNotifier.stories.map((story) => TopStoryWidget(story)).toList(),
      );
    }

    return _ViewModel(widget);
  }
}