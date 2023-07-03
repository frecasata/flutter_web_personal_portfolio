import 'package:flutter/material.dart';
import 'package:flutter_web_personal_portfolio/models/WorkExperience.dart';
import 'package:flutter_web_personal_portfolio/screens/home/components/work_experience_card.dart';
import '../../../responsive.dart';

import '../../../constants.dart';

class MyWorkExperience extends StatelessWidget {
  const MyWorkExperience({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Work Experience",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: defaultPadding),
          Responsive(
            mobile: WorkExperienceGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.7,
            ),
            mobileLarge: WorkExperienceGridView(crossAxisCount: 2),
            tablet: WorkExperienceGridView(childAspectRatio: 1.1),
            desktop: WorkExperienceGridView(),
          )
        ],
      ),
    );
  }
}

class WorkExperienceGridView extends StatelessWidget {
  const WorkExperienceGridView({
    super.key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: work_experience.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
      ),
      itemBuilder: (context, index) => WorkExperienceCard(
        workExperience: work_experience[index],
      ),
    );
  }
}
