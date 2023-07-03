import 'package:flutter/material.dart';
import 'package:flutter_web_personal_portfolio/constants.dart';

import '../../models/NonDeveloperStuff.dart';
import '../../responsive.dart';

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
                        mobile: Container(
                          constraints: BoxConstraints(
                              maxWidth:
                                  400), // Set a maximum width for the container
                          child: Text(
                            nonDeveloperStuff.text!,
                            maxLines: _getMaxLines(context),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(height: 2),
                            textAlign: TextAlign
                                .left, // Adjust the text alignment as needed
                          ),
                        ),
                        mobileLarge: Container(
                          constraints: BoxConstraints(
                              maxWidth:
                                  600), // Set a maximum width for the container
                          child: Text(
                            nonDeveloperStuff.text!,
                            maxLines: _getMaxLines(context),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(height: 2),
                            textAlign: TextAlign
                                .left, // Adjust the text alignment as needed
                          ),
                        ),
                        tablet: Container(
                          constraints: BoxConstraints(
                              maxWidth:
                                  750), // Set a maximum width for the container
                          child: Text(
                            nonDeveloperStuff.text!,
                            maxLines: _getMaxLines(context),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(height: 2),
                            textAlign: TextAlign
                                .left, // Adjust the text alignment as needed
                          ),
                        ),
                        desktop: Container(
                          constraints: BoxConstraints(
                              maxWidth:
                                  850), // Set a maximum width for the container
                          child: Text(
                            nonDeveloperStuff.text!,
                            maxLines: _getMaxLines(context),
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(height: 2),
                            textAlign: TextAlign
                                .left, // Adjust the text alignment as needed
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }

  int _getMaxLines(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return 100;
    } else if (Responsive.isMobileLarge(context)) {
      return 100;
    } else if (Responsive.isTablet(context)) {
      return 100;
    } else if (Responsive.isDesktop(context)) {
      return 100;
    } else {
      return 100;
    }
  }
}
