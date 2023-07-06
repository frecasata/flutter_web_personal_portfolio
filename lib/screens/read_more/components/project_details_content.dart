import 'package:flutter/material.dart';

import '../../../models/Project.dart';

class ProjectDetailsContent extends StatelessWidget {
  const ProjectDetailsContent({
    super.key,
    required this.project,
    required this.maxWidth,
  });

  final Project project;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: maxWidth), // Set a maximum width for the container
      child: Text(
        project.description!,
        maxLines: 100,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(height: 2),
        textAlign: TextAlign.left, // Adjust the text alignment as needed
      ),
    );
  }
}
