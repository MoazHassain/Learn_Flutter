import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/datas/data.dart';
import 'package:grocery_app/screens/homepage.dart';
import 'package:grocery_app/screens/onboard_screen.dart';
import 'package:grocery_app/screens/popular_items.dart';
import 'package:grocery_app/themes/theme_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer(
        builder: (context, ThemeModel themeModel, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Grocery Store',
            theme: themeModel.isDark
                ? ThemeData.dark().copyWith(
                    colorScheme: ColorScheme(
                      brightness: Brightness.dark,
                      primary: Colors.deepOrange,
                      onPrimary: Colors.deepOrange,
                      secondary: Colors.deepOrange,
                      onSecondary: Colors.deepOrange,
                      error: Colors.deepOrange,
                      onError: Colors.deepOrange,
                      background: Colors.deepOrange,
                      onBackground: Colors.deepOrange,
                      surface: Colors.deepOrange,
                      onSurface: Colors.deepOrange,
                    ),
                    textTheme: ThemeData.dark().textTheme.apply(
                          fontFamily: "Glory",
                        ),
                  )
                : ThemeData.light().copyWith(
                    colorScheme: ColorScheme(
                      brightness: Brightness.light,
                      primary: Colors.deepOrange,
                      onPrimary: Colors.deepOrange,
                      secondary: Colors.deepOrange,
                      onSecondary: Colors.deepOrange,
                      error: Colors.deepOrange,
                      onError: Colors.deepOrange,
                      background: Colors.deepOrange,
                      onBackground: Colors.deepOrange,
                      surface: Colors.deepOrange,
                      onSurface: Colors.deepOrange,
                    ),
                    textTheme: ThemeData.dark().textTheme.apply(
                          fontFamily: "Glory",
                        ),
                  ),
            home: OnBoardScreen(),
          );
        },
      ),
    );
  }
}
