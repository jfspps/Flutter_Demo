import 'package:flutter/material.dart';
import 'package:dice/widgets/custom_image_widget.dart';
import 'dart:math';

// "const" is a compile-time constant and must be initialised here;
const double defaultFontSize = 30;
const String message = "Roll the dice";
const double defaultPadding = 20;

final randomNumber = Random();

/// Defines a coupled Image and TextButton widget. This is established between
/// the Image filename and the TextButton rollDice method.
class CustomImageAndButtonWidget extends StatefulWidget {
  const CustomImageAndButtonWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CustomImageAndButtonWidgetState();
  }
}

/// Private class (only accessible here)
class _CustomImageAndButtonWidgetState
    extends State<CustomImageAndButtonWidget> {
  String imageFilename = "dice-1.png";

  // define rollDice here, and call this widget's build() again to update the UI
  void rollDice() {
    var diceRoll = randomNumber.nextInt(6) + 1;

    // pass an anonymous function to setState (part of State generic)
    setState(() {
      imageFilename = "dice-$diceRoll.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageWidget(imageFilename),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: const EdgeInsets.only(
              top: defaultPadding,
            ),
            textStyle: const TextStyle(
              fontSize: defaultFontSize,
            ),
          ),
          child: const Text(message),
        )
      ],
    );
  }
}
