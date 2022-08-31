import 'dart:async';

import 'package:firebase_demo/screen/signin.dart';
import 'package:firebase_demo/screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => SignUp(),
        ),
      ),
    );
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
