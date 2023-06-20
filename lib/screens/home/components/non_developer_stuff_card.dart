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
            maxLines: 1,
            style: Theme.of(context).textTheme.titleSmall,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: defaultPadding),
          Text(
            recommendation.text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          const SizedBox(height: defaultPadding),
          TextButton(
            onPressed: () {},
            child: Text(
              "Read More",
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
