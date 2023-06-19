import 'package:flutter/material.dart';

import '../../../components/animated_counter.dart';
import '../../../constants.dart';
import 'numerical_highlight.dart';

class NumericalHighlights extends StatelessWidget {
  const NumericalHighlights({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NumericalHighlight(
            counter: AnimatedCounter(
              value: 100,
              text: "+",
            ),
            label: "Subscribers",
          ),
          NumericalHighlight(
            counter: AnimatedCounter(
              value: 100,
              text: "+",
            ),
            label: "Subscribers",
          ),
          NumericalHighlight(
            counter: AnimatedCounter(
              value: 100,
              text: "+",
            ),
            label: "Subscribers",
          ),
          NumericalHighlight(
            counter: AnimatedCounter(
              value: 100,
              text: "+",
            ),
            label: "Subscribers",
          ),
        ],
      ),
    );
  }
}
