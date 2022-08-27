import 'package:flutter/material.dart';

var clrBlack000 = Color(0xff313337);
var clrBlack100 = Color.fromARGB(255, 105, 109, 119);
var clrWhite000 = Color(0xffE5E6E8);
var clrWhite100 = Color(0xffBDC1C7);
var clrPrimary = Color(0xff0040FF);
var clrSecondary = Color(0xffD9C69F);

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      backgroundColor: Colors.white,
      primaryColor: clrPrimary,
      // fontFamily: "Nunito",
      buttonTheme: ButtonThemeData(),
      textTheme: TextTheme(
        headline1: TextStyle(
          color: clrBlack000,
        ),
        headline2: TextStyle(
          color: clrBlack000,
        ),
        bodyText1: TextStyle(
          color: clrBlack000,
        ),
        bodyText2: TextStyle(
          color: clrBlack000,
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
