import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'knowledge_text.dart';

class Coding extends StatelessWidget {
  const Coding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding Languages",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        KnowledgeText(text: "Java"),
        KnowledgeText(text: "Python"),
        KnowledgeText(text: "Dart"),
        KnowledgeText(text: "C++"),
        KnowledgeText(text: "MySQL"),
        KnowledgeText(text: "HTML"),
        KnowledgeText(text: "CSS"),
        KnowledgeText(text: "JavaScript"),
      ],
    );
  }
}
