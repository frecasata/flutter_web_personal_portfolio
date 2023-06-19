import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/NonDeveloperStuff.dart';

class NonDeveloperStuffCard extends StatelessWidget {
  const NonDeveloperStuffCard({
    super.key,
    required this.recommendation,
  });

  final NonDeveloperStuff recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(recommendation.source!),
          const SizedBox(height: defaultPadding),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          )
        ],
      ),
    );
  }
}
