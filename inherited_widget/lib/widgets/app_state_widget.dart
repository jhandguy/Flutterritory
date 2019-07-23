import 'package:flutter/widgets.dart';
import 'package:flutterritory/states/app_state.dart';
import 'package:repository/repository.dart';

class AppStateWidget extends StatefulWidget {
  final Widget child;
  final TopStoriesRepository repository;
  final AppState state;

  AppStateWidget({
    @required this.child,
    @required this.repository,
    this.state,
  });

  static AppStateWidgetState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_AppStateInheritedWidget) as _AppStateInheritedWidget).widgetState;
  }

  @override
  State<StatefulWidget> createState() {
    return AppStateWidgetState();
  }
}

class AppStateWidgetState extends State<AppStateWidget> {
  AppState state;

  @override
  void initState() {
    super.initState();
    topStories();
  }

  @override
  Widget build(BuildContext context) {
    return _AppStateInheritedWidget(
      widgetState: this,
      child: widget.child,
    );
  }

  Future topStories() {
    setState(() {
      state = AppState(stories: [], isLoading: true);
    });
    
    return widget.repository
      .topStories()
      .then((stories) {
        setState(() {
          state = AppState(stories: stories, isLoading: false);
        });
      }).catchError((error) {
        setState(() {
          state = AppState(stories: [], isLoading: false, error: error);
        });
      });
  }
}

class _AppStateInheritedWidget extends InheritedWidget {
  final AppStateWidgetState widgetState;

  _AppStateInheritedWidget({
    Key key,
    @required this.widgetState,
    @required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}