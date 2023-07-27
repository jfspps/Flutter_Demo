import 'package:flutter/material.dart';

/// Text style with color white, weight bold and size 24
class CustomTextWidget extends StatelessWidget {
  // now allow the constructor to assign the properties
  const CustomTextWidget(this.defaultFontSize, this.txtMessage, {super.key});

  // "final" is a run-time constant and can be initialised (and fixed) at run-time
  final String txtMessage;
  final double defaultFontSize;

  @override
  Widget build(BuildContext context) {
    return Text(txtMessage,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: defaultFontSize));
  }
}
