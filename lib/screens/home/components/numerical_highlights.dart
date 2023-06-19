import 'package:flutter/material.dart';
import 'package:flutter_web_personal_portfolio/responsive.dart';

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
                const SizedBox(height: defaultPadding),
                Row(
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
                  ],
                )
              ],
            )
          : Row(
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
