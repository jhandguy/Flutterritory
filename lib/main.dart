import 'package:flutter/material.dart';
import 'package:flutterritory/models/story.dart';

void main() => runApp(Flutteritory());

class Flutteritory extends StatelessWidget {
  static const String title = 'Flutteritory';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData.dark(),
      home: TopStoriesWidget(title: title),
    );
  }
}

class TopStoriesWidget extends StatefulWidget {
  TopStoriesWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TopStoriesState createState() => _TopStoriesState();
}

class _TopStoriesState extends State<TopStoriesWidget> {
  List<Story> _topStories = [
    Story("Section 1", "Subsection 1", "Title 1", "Abstract 1", "Byline 1", "URL 1", []),
    Story("Section 2", "Subsection 2", "Title 2", "Abstract 2", "Byline 2", "URL 2", []),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: _topStories.map((story) => Row(
            children: <Widget>[
              Text(story.title)
            ],
          )).toList(),
        ),
      ),
    );
  }
}
