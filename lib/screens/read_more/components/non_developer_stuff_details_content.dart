import 'package:flutter/material.dart';

import '../../../models/NonDeveloperStuff.dart';

class NonDeveloperStuffDetailsContent extends StatelessWidget {
  const NonDeveloperStuffDetailsContent({
    super.key,
    required this.nonDeveloperStuff,
    required this.maxWidth,
  });

  final NonDeveloperStuff nonDeveloperStuff;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: maxWidth), // Set a maximum width for the container
      child: Text(
        nonDeveloperStuff.text!,
        maxLines: 100,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(height: 2),
        textAlign: TextAlign.left, // Adjust the text alignment as needed
      ),
    );
  }
}
