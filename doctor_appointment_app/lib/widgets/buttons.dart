import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomButtom extends StatelessWidget {
  CustomButtom({
    Key? key,
    this.OnPressed,
    this.BgColor,
    this.ShadowColor,
    this.ButtonTextColor,
    this.ButtonText,
    this.IconAlignment,
    this.ButtonIcon,
    this.ButtonIconSize,
    this.IconColor,
    this.ButtonWidth,
    this.ButtonContentWidth,
    this.ButtonElevation,
    this.ButtonRadius,
    this.ButtonFontsize,
    this.ButtonFontweight,
  }) : super(key: key);
  dynamic? OnPressed;
  Color? BgColor, ShadowColor, ButtonTextColor, IconColor;
  String? ButtonText;
  IconData? ButtonIcon;
  double? ButtonWidth,
      ButtonContentWidth,
      ButtonElevation,
      ButtonRadius,
      ButtonFontsize,
      ButtonIconSize;
  FontWeight? ButtonFontweight;
  Alignment? IconAlignment;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ButtonWidth,
      height: 38,
      child: ElevatedButton(
        onPressed: OnPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            // Color(0xffFAFAFE),
            BgColor,
          ),
          elevation: MaterialStateProperty.all(ButtonElevation),
          shadowColor: MaterialStateProperty.all(
            // Color.fromARGB(30, 28, 51, 91),
            ShadowColor,
          ),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(
              // vertical: 16,
              horizontal: 12,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(ButtonRadius!),
            ),
          ),
        ),
        child: Container(
          width: ButtonContentWidth,
          child: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  ButtonText!,
                  style: TextStyle(
                    color: ButtonTextColor,
                    fontSize: ButtonFontsize,
                    fontWeight: ButtonFontweight,
                  ),
                ),
              ),
              Container(
                alignment: IconAlignment,
                child: Icon(
                  ButtonIcon,
                  size: ButtonIconSize,
                  color: IconColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
