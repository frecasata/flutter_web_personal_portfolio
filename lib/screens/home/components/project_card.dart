import 'package:flutter/material.dart';
import 'package:flutter_web_personal_portfolio/screens/read_more/project_details_screen.dart';

import '../../../constants.dart';
import '../../../models/Project.dart';
import '../../../responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: defaultPadding),
          Text(
            project.description!,
            maxLines: _getMaxLines(context),
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
          ),
          Spacer(),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProjectDetailsScreen(
                          project: project,
                        )),
              );
            }, //implement navigation to read more
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

int _getMaxLines(BuildContext context) {
  if (Responsive.isMobile(context)) {
    return 2;
  } else if (Responsive.isMobileLarge(context)) {
    return 4;
  } else if (Responsive.isTablet(context)) {
    return 3;
  } else if (Responsive.isDesktop(context)) {
    return 5;
  } else {
    return 4;
  }
}
