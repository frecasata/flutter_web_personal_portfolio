import 'package:flutter/material.dart';

import '../../../models/WorkExperience.dart';

class WorkExperienceContent extends StatelessWidget {
  const WorkExperienceContent({
    super.key,
    required this.workExperience,
    required this.maxWidth,
  });

  final WorkExperience workExperience;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: maxWidth), // Set a maximum width for the container
      child: Text(
        workExperience.description!,
        maxLines: 100,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(height: 2),
        textAlign: TextAlign.left, // Adjust the text alignment as needed
      ),
    );
  }
}
