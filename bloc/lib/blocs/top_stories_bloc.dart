import 'package:bloc/bloc.dart';
import 'package:flutterritory/events/top_stories_event.dart';
import 'package:flutterritory/states/top_stories_state.dart';

class TopStoriesBloc extends Bloc<TopStoriesEvent, TopStoriesState> {
  @override
  // TODO: implement initialState
  TopStoriesState get initialState => null;

  @override
  Stream<TopStoriesState> mapEventToState(TopStoriesEvent event) {
    // TODO: implement mapEventToState
    return null;
  }
}