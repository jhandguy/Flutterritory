import 'package:flutter/material.dart';

void main() {
  runApp(
    Flutterritory(
      title: 'Flutterritory',
    )
  );
}

class Flutterritory extends StatelessWidget {
  final String title;

  Flutterritory({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData.dark(),
      home: Center(child: Text(title)),
    );
  }
}