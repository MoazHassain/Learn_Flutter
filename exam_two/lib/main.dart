import 'package:exam_two/screens/DetailsPage/details-page.dart';
import 'package:exam_two/screens/ProductPage/product-page.dart';
import 'package:exam_two/theme/theme.dart';
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
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      // home: ProductPage(),
      home: DetailsPage(),
    );
  }
}
