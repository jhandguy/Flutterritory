import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutterritory/actions/top_stories_actions.dart';
import 'package:flutterritory/states/app_state.dart';
import 'package:flutterritory/widgets/top_story_widget.dart';

class TopStoriesWidget extends StatelessWidget {
  TopStoriesWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: StoreConnector<AppState, _ViewModel>(
        converter: (store) => _ViewModel.from(store.state),
        builder: (context, viewModel) {
          return RefreshIndicator(
            onRefresh: () {
              final action = TopStoriesGetAction();
              StoreProvider.of<AppState>(context).dispatch(action);
              return action.completer.future;
            },
            child: ListView(children: viewModel.topStoryWidgets),
          );
        },
      ),
    );
  }
}

@immutable
class _ViewModel {
  final List<TopStoryWidget> topStoryWidgets;

  _ViewModel(this.topStoryWidgets);

  factory _ViewModel.from(AppState state) {
    var topStoryWidgets = state.stories.map((story) => TopStoryWidget(story)).toList();
    return _ViewModel(topStoryWidgets);
  }
}