import 'package:dice/widgets/custom_image_widget.dart';
import 'package:flutter/material.dart';

// "const" is a compile-time constant and must be initialised here;
const double defaultSize = 24;
const String message = "Roll the dice";

/// Custom MaterialApp widget that applies a top-right to bottom-left gradient, with the
/// CustomText widget styling in place.
class CustomMaterialAppWidget extends StatelessWidget {
  // this is needed for all widgets; params in curly braces are named arguments;
  // here we pass the Widget key to the StatelessWidget parent instance field "key"
  CustomMaterialAppWidget({super.key});

  String imageFilename = "dice-1.png";

  // define function here, in preference to using anonymous functions (similar to
  // lambda functions)
  void rollDice() {
    // this does nothing
    imageFilename = "dice-2.png";
  }

  @override
  Widget build(BuildContext context) {
    // pass the MaterialApp widget https://api.flutter.dev/flutter/material/MaterialApp-class.html

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
                child: Center(
                    child: Column(children: [
                  CustomImageWidget(imageFilename),
                  TextButton(onPressed: rollDice, child: const Text(message))
                ])))));
  }
}
