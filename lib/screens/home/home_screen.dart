import 'package:flutter/material.dart';
import 'package:flutter_web_personal_portfolio/screens/main/main_screen.dart';

import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/numerical_highlights.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        NumericalHighlights(),
        MyProjects(),
      ],
    );
  }
}
