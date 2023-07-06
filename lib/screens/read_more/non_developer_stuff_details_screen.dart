import 'package:flutter/material.dart';
import 'package:flutter_web_personal_portfolio/constants.dart';

import '../../models/NonDeveloperStuff.dart';
import '../../responsive.dart';
import 'components/non_developer_stuff_details_content.dart';

class NonDeveloperStuffDetailsScreen extends StatelessWidget {
  NonDeveloperStuffDetailsScreen({super.key, required this.nonDeveloperStuff});

  final NonDeveloperStuff nonDeveloperStuff;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Non Developer Stuff Details",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        centerTitle: true,
        backgroundColor: bgColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: maxWidth),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: defaultPadding * 1.5),
                        Text(
                          nonDeveloperStuff.name!,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: defaultPadding * 2),
                        Responsive(
                          mobile: NonDeveloperStuffDetailsContent(
                            nonDeveloperStuff: nonDeveloperStuff,
                            maxWidth: 400,
                          ),
                          mobileLarge: NonDeveloperStuffDetailsContent(
                            nonDeveloperStuff: nonDeveloperStuff,
                            maxWidth: 600,
                          ),
                          tablet: NonDeveloperStuffDetailsContent(
                            nonDeveloperStuff: nonDeveloperStuff,
                            maxWidth: 750,
                          ),
                          desktop: NonDeveloperStuffDetailsContent(
                            nonDeveloperStuff: nonDeveloperStuff,
                            maxWidth: 850,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
