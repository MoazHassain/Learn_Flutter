import 'package:flutter/material.dart';
import 'package:task_management/screen/intro_screen.dart';
import 'package:task_management/screen/onboarding_screen.dart';
import 'package:task_management/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: CustomTheme.darkTheme,
      home: IntroScreen(),
      // home: OnBoarding(),
    );
  }
}
