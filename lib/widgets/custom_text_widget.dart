import 'package:flutter/material.dart';

/// Text style with color white, weight bold and size 24
class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Roll the dice',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24));
  }
}
