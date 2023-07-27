import 'package:flutter/material.dart';

void main() {
  // pass the MaterialApp widget https://api.flutter.dev/flutter/material/MaterialApp-class.html

  // nest widgets, with MaterialApp being the parent widget
  runApp(const MaterialApp(
      home: Scaffold(
          body: Center(
              child: Text('Roll the dice')
          )
      )
  ));
}
