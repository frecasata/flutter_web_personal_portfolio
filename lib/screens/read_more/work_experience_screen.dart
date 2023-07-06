import 'package:flutter/material.dart';
import 'package:flutter_web_personal_portfolio/constants.dart';
import 'package:flutter_web_personal_portfolio/models/WorkExperience.dart';

import '../../responsive.dart';
import 'components/work_experience_content.dart';

class WorkExperienceScreen extends StatelessWidget {
  WorkExperienceScreen({super.key, required this.workExperience});

  final WorkExperience workExperience;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Work Experience Details",
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
                        workExperience.title!,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: defaultPadding * 2),
                      Responsive(
                        mobile: WorkExperienceContent(
                          workExperience: workExperience,
                          maxWidth: 400,
                        ),
                        mobileLarge: WorkExperienceContent(
                          workExperience: workExperience,
                          maxWidth: 600,
                        ),
                        tablet: WorkExperienceContent(
                          workExperience: workExperience,
                          maxWidth: 750,
                        ),
                        desktop: WorkExperienceContent(
                          workExperience: workExperience,
                          maxWidth: 850,
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
}
