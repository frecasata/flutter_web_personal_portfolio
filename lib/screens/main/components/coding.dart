import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'animated_linear_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.4,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.3,
          label: "C++",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.88,
          label: "MySQL",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.85,
          label: "HTML",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.5,
          label: "CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "JavaScript",
        ),
      ],
    );
  }
}
