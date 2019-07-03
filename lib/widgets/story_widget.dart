import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterritory/models/story.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget(this._story);
  
  final Story _story;

  @override
  Widget build(BuildContext context) {
    final imageUrl = _story.getImageUrl("superJumbo");
    return Scaffold(
      appBar: AppBar(
        title: Text("${_story.section} ${_story.subsection}"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: IntrinsicWidth(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: imageUrl.isNotEmpty ? Image(image: NetworkImage(imageUrl)) : null
                ),
                Container(
                  child: Text(
                    _story.title, 
                    style: Theme.of(context).textTheme.title,
                  ),
                  padding: EdgeInsets.all(10)
                ),
                Container(
                  child: Text(
                    _story.abstract, 
                    style: Theme.of(context).textTheme.body1,
                  ),
                  padding: EdgeInsets.all(10)
                ),
                Container(
                  child: Text(
                    _story.byline, 
                    style: Theme.of(context).textTheme.caption,
                  ),
                  padding: EdgeInsets.all(10)
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}