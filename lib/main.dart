import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeData _darkTheme = ThemeData.dark().copyWith(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: bgColor,
      canvasColor: bgColor,
      textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.white)
          .copyWith(
            bodyLarge: TextStyle(color: bodyTextColor),
            bodyMedium: TextStyle(color: bodyTextColor),
          ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Franco's Portfolio",
      theme: _darkTheme,
      home: HomeScreen(),
    );
  }
}
