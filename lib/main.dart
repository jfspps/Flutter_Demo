import 'package:flutter/material.dart';

void main() {
  // pass the MaterialApp widget https://api.flutter.dev/flutter/material/MaterialApp-class.html

  // nest widgets, with MaterialApp being the parent widget;
  // also demonstrated are named arguments (as opposed to position arguments found in C based languages)
  runApp(MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.white24, Colors.brown])),
              child: const Center(child: Text('Roll the dice'))))));
}
