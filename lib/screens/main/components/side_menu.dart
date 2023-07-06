import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/link.dart';
import '../../../constants.dart';
import '../../../models/MyPersonalInfo.dart';
import 'coding.dart';
import 'knowledge.dart';
import 'personal_info_text.dart';

import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    PersonalInfoText(
                      title: "City",
                      text: "Quezon City",
                    ),
                    PersonalInfoText(
                      title: "Region",
                      text: "NCR",
                    ),
                    PersonalInfoText(
                      title: "Country",
                      text: "Philippines",
                    ),
                    PersonalInfoText(
                      title: "Age",
                      text: myInfo.age!,
                    ),
                    //Skills(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Coding(),
                    Knowledge(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse(
                          'https://drive.google.com/file/d/1AyCAu98jUJVxn8TSBeR88cC9-AqD5H9-/view?usp=sharing'),
                      builder: (context, followLink) => TextButton(
                        onPressed: followLink,
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                "DOWNLOAD CV",
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .color,
                                ),
                              ),
                              SizedBox(width: defaultPadding / 2),
                              SvgPicture.asset("assets/icons/download.svg"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          Link(
                            target: LinkTarget.blank,
                            uri: Uri.parse(
                                'https://www.linkedin.com/in/franco-neo-recasata-7422aa272/'),
                            builder: (context, followLink) => IconButton(
                              onPressed: followLink,
                              icon:
                                  SvgPicture.asset("assets/icons/linkedin.svg"),
                            ),
                          ),
                          Link(
                            target: LinkTarget.blank,
                            uri: Uri.parse('https://github.com/NeoRecasata'),
                            builder: (context, followLink) => IconButton(
                              onPressed: followLink,
                              icon: SvgPicture.asset("assets/icons/github.svg"),
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
