import 'package:flutter/material.dart';
import 'package:flutterritory/models/story.dart';
import 'package:flutterritory/widgets/story_widget.dart';

class TopStoryWidget extends StatelessWidget {
  TopStoryWidget(this._story);
  
  final Story _story;

  @override
  Widget build(BuildContext context) {
    final imageUrl = _story.getImageUrl("Standard Thumbnail");
    return MergeSemantics(
      child: ListTile(
        leading: imageUrl.isNotEmpty ? CircleAvatar(backgroundImage: NetworkImage(imageUrl)) : null,
        title: Text(_story.title),
        subtitle: Text(_story.byline),
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => StoryWidget(_story)),
        ),
      ),
    );
  }
}