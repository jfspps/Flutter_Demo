import 'package:flutter/cupertino.dart';

const String rootPath = "assets/images/";

/// Displays images from the assets/images directory
class CustomImageWidget extends StatelessWidget {
  final String fileName;

  const CustomImageWidget(this.fileName, {super.key});

  @override
  Widget build(BuildContext context) {
    final relPath = rootPath + fileName;

    // width in pixels
    return Image.asset(
      relPath,
      width: 200,
    );
  }
}
