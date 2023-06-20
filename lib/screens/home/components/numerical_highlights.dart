import 'package:flutter/material.dart';
import '../../../responsive.dart';

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
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NumericalHighlight(
                      counter: AnimatedCounter(
                        value: 5,
                        text: "+",
                      ),
                      label: "Years of Experience",
                    ),
                    NumericalHighlight(
                      counter: AnimatedCounter(
                        value: 20,
                        text: "+",
                      ),
                      label: "Coding Projects",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NumericalHighlight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "K+",
                      ),
                      label: "Lines of Code Written",
                    ),
                    NumericalHighlight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                      label: "Languages",
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumericalHighlight(
                  counter: AnimatedCounter(
                    value: 5,
                    text: "+",
                  ),
                  label: "Years of Experience",
                ),
                NumericalHighlight(
                  counter: AnimatedCounter(
                    value: 20,
                    text: "+",
                  ),
                  label: "Coding Projects",
                ),
                NumericalHighlight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: "K+",
                  ),
                  label: "Lines of Code Written",
                ),
                NumericalHighlight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: "+",
                  ),
                  label: "Languages",
                ),
              ],
            ),
    );
  }
}
