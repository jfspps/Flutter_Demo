import 'package:dice/widgets/custom_image_and_button_widget.dart';
import 'package:flutter/material.dart';

/// Custom MaterialApp widget that applies a top-right to bottom-left gradient, with the
/// CustomText widget styling in place.
class CustomMaterialAppWidget extends StatelessWidget {
  // this is needed for all widgets; params in curly braces are named arguments;
  // here we pass the Widget key to the StatelessWidget parent instance field "key"
  const CustomMaterialAppWidget({super.key});

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
              colors: [
                Colors.green,
                Colors.brown,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: const Center(
            child: CustomImageAndButtonWidget(),
          ),
        ),
      ),
    );
  }
}
