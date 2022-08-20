import 'package:flutter/material.dart';

var clrBlack000 = Color.fromARGB(255, 29, 30, 39);
var clrBlack100 = Color.fromARGB(255, 29, 30, 39);
var clrWhite000 = Color(0xffF8F8F8);
var clrWhite100 = Color(0xffE9E9EB);
var clrPrimary = Color(0xff246BFD);

class CustomTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      scaffoldBackgroundColor: clrBlack000,
      backgroundColor: clrBlack100,
      primaryColor: clrPrimary,
      fontFamily: "Nunito",
      buttonTheme: ButtonThemeData(),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: clrWhite000,
        ),
        headline2: TextStyle(
          color: clrWhite000,
        ),
        bodyText1: TextStyle(
          color: clrWhite000,
        ),
        bodyText2: TextStyle(
          color: clrWhite100,
        ),
      ),
    );
  }
}

myfont(
  double? size, [
  FontWeight? fw,
  Color? clr,
]) {
  return TextStyle(
    fontSize: size,
    fontWeight: fw,
    color: clr,
  );
}
