import 'package:flutter/material.dart';
import 'package:flutterritory/widgets/app_state_widget.dart';
import 'package:flutterritory/widgets/app_widget.dart';
import 'package:repository/repository.dart';

main() {
  runApp(
    AppStateWidget(
      child: AppWidget(title: 'Flutterritory'),
      repository: TopStoriesRepository(),
    )
  );
}