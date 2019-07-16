import 'package:flutter/material.dart';
import 'package:flutterritory/models/top_stories_model.dart';
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
          return ListView(
            children: model.stories.map((story) => Text(story.title)).toList(),
          );
        },
      ),
    );
  }
}