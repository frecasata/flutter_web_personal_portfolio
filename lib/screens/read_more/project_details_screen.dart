import 'package:flutter/material.dart';
import 'package:flutter_web_personal_portfolio/constants.dart';

import '../../models/Project.dart';
import '../../responsive.dart';
import 'components/project_details_content.dart';

class ProjectDetailsScreen extends StatelessWidget {
  ProjectDetailsScreen({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Project Details",
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
                        project.title!,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: defaultPadding * 2),
                      Responsive(
                        mobile: ProjectDetailsContent(
                            project: project, maxWidth: 400),
                        mobileLarge: ProjectDetailsContent(
                            project: project, maxWidth: 600),
                        tablet: ProjectDetailsContent(
                            project: project, maxWidth: 750),
                        desktop: ProjectDetailsContent(
                            project: project, maxWidth: 850),
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
