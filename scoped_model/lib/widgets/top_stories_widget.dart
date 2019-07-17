import 'package:flutter/material.dart';
import 'package:flutterritory/models/top_stories_model.dart';
import 'package:flutterritory/widgets/top_story_widget.dart';
import 'package:scoped_model/scoped_model.dart';

class TopStoriesWidget extends StatelessWidget {
  TopStoriesWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ScopedModelDescendant<TopStoriesModel>(
        builder: (context, child, model) {
          return RefreshIndicator(
            onRefresh: model.topStories,
            child: _ViewModel.from(model).widget,
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

  factory _ViewModel.from(TopStoriesModel model) {
    var widget;

    if (model.error != null) {
      widget = Center(
        child: Text(model.error.toString()),
      );
    } 
    else {
      widget = ListView(
        children: model.stories.map((story) => TopStoryWidget(story)).toList(),
      );
    }

    return _ViewModel(widget);
  }
}