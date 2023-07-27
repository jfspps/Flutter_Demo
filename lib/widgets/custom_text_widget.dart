import 'package:flutter/material.dart';

// "const" is a compile-time constant and must be initialised here;
const double defaultSize = 24;

/// Text style with color white, weight bold and size 24
class CustomTextWidget extends StatelessWidget {
  CustomTextWidget({super.key});

  // indicates defaultFontSize can be null
  double? defaultFontSize;

  // "final" is a run-time constant and can be initialised (and fixed) at run-time
  final double twentyFour = defaultSize;

  @override
  Widget build(BuildContext context) {
    // if defaultFontSize is null, then assign a int value of 24
    defaultFontSize ??= twentyFour;

    return Text('Roll the dice',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: defaultFontSize));
  }
}
