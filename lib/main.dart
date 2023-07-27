import 'package:flutter/material.dart';

void main() {
  // pass the MaterialApp widget https://api.flutter.dev/flutter/material/MaterialApp-class.html

  runApp(const CustomWidget());
}

class CustomWidget extends StatelessWidget {
  // this is needed for all widgets; params in curly braces are named arguments;
  // here we pass the Widget key to the StatelessWidget parent instance field "key"
  const CustomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // nest widgets, with MaterialApp being the parent widget;
    // also demonstrated are named arguments (as opposed to position arguments found in C based languages)
    return MaterialApp(
        home: Scaffold(
            body: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.green, Colors.brown],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft)),
                child: const Center(
                    child: Text('Roll the dice',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24))))));
  }
}
