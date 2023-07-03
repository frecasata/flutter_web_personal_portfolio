import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/link.dart';
import '../../../constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .95,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
            Spacer(),
            Text(
              "Franco Neo Recasata",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "UA&P BSIT Student",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            SizedBox(height: defaultPadding),
            Divider(),
            SizedBox(height: defaultPadding),
            TextButton(
              onPressed: () {},
              child: FittedBox(
                child: Row(
                  children: [
                    Text(
                      "DOWNLOAD CV",
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                      ),
                    ),
                    SizedBox(width: defaultPadding / 2),
                    SvgPicture.asset("assets/icons/download.svg"),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0),
              color: Color(0xFF24242E),
              child: Row(
                children: [
                  Spacer(),
                  Link(
                    target: LinkTarget.self,
                    uri: Uri.parse(
                        'https://www.linkedin.com/in/franco-neo-recasata-7422aa272/'),
                    builder: (context, followLink) => IconButton(
                      onPressed: followLink,
                      icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                    ),
                  ),
                  Link(
                    target: LinkTarget.self,
                    uri: Uri.parse('https://github.com/NeoRecasata'),
                    builder: (context, followLink) => IconButton(
                      onPressed: followLink,
                      icon: SvgPicture.asset("assets/icons/github.svg"),
                    ),
                  ),
                  Spacer(),
                  SizedBox(height: defaultPadding),
                ],
              ),
            ),
            SizedBox(height: defaultPadding),
          ],
        ),
      ),
    );
  }
}
