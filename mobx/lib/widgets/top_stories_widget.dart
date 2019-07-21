import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterritory/stores/top_stories_store.dart';
import 'package:flutterritory/widgets/top_story_widget.dart';

class TopStoriesWidget extends StatefulWidget {
  final String title;
  final TopStoriesStore store;

  TopStoriesWidget({Key key, this.title, this.store}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TopStoriesState(store: store);
  }
}

class TopStoriesState extends State<TopStoriesWidget> {
  final TopStoriesStore store;

  TopStoriesState({this.store});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: RefreshIndicator(
        onRefresh: store.topStories,
        child: _ViewModel.from(store).widget,
      )
    );
  }

  @override
  void initState() {
    super.initState();
    store.topStories();
  }
}

@immutable
class _ViewModel {
  final Widget widget;

  _ViewModel(this.widget);

  factory _ViewModel.from(TopStoriesStore store) {
    var widget = Observer(
      builder: (_) {
        if (store.isLoading) {
          return Center(
            child: Text("Loading..."),
          );
        }
        else if (store.error != null) {
          return Center(
            child: Text(store.error.toString()),
          );
        }
        else {
          return ListView(
            children: store.stories.map((story) => TopStoryWidget(story)).toList(),
          );
        }
      },
    );

    return _ViewModel(widget);
  }
}