import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_management/theme/theme.dart';

class CustomButtom extends StatelessWidget {
  CustomButtom({
    Key? key,
    this.OnPressed,
    this.BgColor,
    this.BorderColor,
    this.ShadowColor,
    this.TextAlignment,
    this.ButtonText,
    this.IconAlignment,
    this.ButtonIcon,
    this.ButtonIconSize,
    this.IconColor,
    this.ButtonWidth,
    this.ButtonContentWidth,
    this.ButtonElevation,
    this.ButtonInlinePadd,
    this.ButtonFontsize,
    this.ButtonFontweight,
  }) : super(key: key);

  dynamic? OnPressed;
  Color? BgColor, BorderColor, ShadowColor, IconColor;
  String? ButtonText;
  IconData? ButtonIcon;
  double? ButtonWidth,
      ButtonContentWidth,
      ButtonInlinePadd,
      ButtonElevation,
      ButtonFontsize,
      ButtonIconSize;
  FontWeight? ButtonFontweight;
  Alignment? TextAlignment, IconAlignment;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ButtonWidth,
      height: 56,
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
              horizontal: ButtonInlinePadd!,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: BorderColor!,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(200),
            ),
          ),
        ),
        child: Container(
          width: ButtonContentWidth,
          child: Stack(
            children: [
              Container(
                alignment: TextAlignment,
                child: Text(
                  ButtonText!,
                  style: myfont(
                    17,
                    FontWeight.w600,
                    clrWhite000,
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
