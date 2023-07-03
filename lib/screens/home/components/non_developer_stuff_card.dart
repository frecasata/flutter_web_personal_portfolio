import 'package:flutter/material.dart';
import 'package:flutter_web_personal_portfolio/screens/read_more/non_developer_stuff_details_screen.dart';

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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NonDeveloperStuffDetailsScreen(
                          nonDeveloperStuff: recommendation,
                        )),
              );
            },
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
