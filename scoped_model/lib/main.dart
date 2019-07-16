import 'package:flutter/material.dart';

void main() {
  runApp(
    Flutteritory(
      title: 'Flutteritory',
    )
  );
}

class Flutteritory extends StatelessWidget {
  final String title;

  Flutteritory({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData.dark(),
      home: Text(title),
    );
  }
}