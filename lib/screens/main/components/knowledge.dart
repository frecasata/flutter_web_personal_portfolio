import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'knowledge_text.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
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
            "Knowledge",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        KnowledgeText(text: "Java Web Servlets"),
        KnowledgeText(text: "JSP"),
        KnowledgeText(text: "JSTL"),
        KnowledgeText(text: "Bootstrap5"),
        KnowledgeText(text: "SQL Database Management"),
        KnowledgeText(text: "Agile"),
        KnowledgeText(text: "VSCode"),
        KnowledgeText(text: "Netbeans"),
        KnowledgeText(text: "Eclipse"),
        KnowledgeText(text: "MySql Workbench"),
        KnowledgeText(text: "Python Pandas"),
        KnowledgeText(text: "Arduino"),
        KnowledgeText(text: "Raspberry Pi"),
        KnowledgeText(text: "Arduino"),
        KnowledgeText(text: "Git Version Control"),
        KnowledgeText(text: "Linux"),
      ],
    );
  }
}
