import 'package:flutter/material.dart';

import '../../../constants.dart';

class PersonalInfoText extends StatelessWidget {
  const PersonalInfoText({
    super.key,
    this.title,
    this.text,
  });

  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(text!),
        ],
      ),
    );
  }
}
