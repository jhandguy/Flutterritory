import 'package:flutter/material.dart';
import 'package:flutterritory/models/story.dart';

class TopStoryWidget extends StatelessWidget {
  TopStoryWidget(this._viewModel);
  
  final _ViewModel _viewModel;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: ListTile(
        leading: _viewModel.imageUrl.isNotEmpty ? CircleAvatar(backgroundImage: NetworkImage(_viewModel.imageUrl)) : null,
        title: Text(_viewModel.title),
        subtitle: Text(_viewModel.byline),
      ),
    );
  }

  factory TopStoryWidget.from(Story story) {
    return TopStoryWidget(
      _ViewModel(story.title, story.byline, story.getImageUrl("Standard Thumbnail"))
    );
  }
}

@immutable
class _ViewModel {
  final String title;
  final String byline;
  final String imageUrl;

  _ViewModel(this.title, this.byline, this.imageUrl);
}