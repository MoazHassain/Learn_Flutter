import 'package:exam_one/details.dart';
import 'package:exam_one/homepage.dart';
import 'package:flutter/material.dart';

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
      title: 'Exam One',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Home(),
      home: Detail(),
    );
  }
}
