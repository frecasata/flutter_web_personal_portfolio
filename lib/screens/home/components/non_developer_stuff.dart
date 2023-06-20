import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/NonDeveloperStuff.dart';
import 'non_developer_stuff_card.dart';

class NonDeveloperStuff extends StatelessWidget {
  const NonDeveloperStuff({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Non-developer stuff",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: defaultPadding),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demo_recommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: defaultPadding),
                  child: NonDeveloperStuffCard(
                    recommendation: demo_recommendations[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomScrollbarWithSingleChildScrollView extends StatelessWidget {
  final Widget child;
  final Axis scrollDirection;

  const CustomScrollbarWithSingleChildScrollView(
      {required this.child, required this.scrollDirection, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: MyCustomScrollBehavior(),
      child: Scrollbar(
        child: SingleChildScrollView(
          scrollDirection: scrollDirection,
          child: child,
        ),
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      };
}
