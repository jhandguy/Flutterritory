import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterritory/actions/top_stories_action.dart';
import 'package:flutterritory/states/app_state.dart';
import 'package:redux/redux.dart';

class TopStories extends StatelessWidget {
  TopStories({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: StoreConnector<AppState, _ViewModel>(
        converter: (store) => _ViewModel.from(store),
        builder: (context, viewModel) {
          if (viewModel.items.isEmpty) {
            return Center(
              child: FlatButton(
                child: Text("Load"),
                color: ThemeData.dark().buttonColor,
                onPressed: () {StoreProvider.of<AppState>(context).dispatch(GetTopStoriesAction);},
              ),
            );
          }
          return ListView(
              children: viewModel.items.map((item) => Row(children: <Widget>[Text(item.title)],)).toList(),
          );
        },
      )
    );
  }
}

@immutable
class _Items {
  final String title;
  final String byline;
  final Image image;

  _Items(this.title, this.byline, this.image);
}

class _ViewModel {
  final List<_Items> items;

  _ViewModel(this.items);

  factory _ViewModel.from(Store<AppState> store) {
    var items = store.state.topStories.map((story) => _Items(story.title, story.byline, null)).toList();
    return _ViewModel(items);
  }
}