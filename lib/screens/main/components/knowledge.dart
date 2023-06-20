import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

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

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
