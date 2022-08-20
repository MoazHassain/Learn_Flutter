import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/theme/theme.dart';
import 'package:task_management/widget/buttons.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/Icon.svg",
                      width: 96,
                      height: 96,
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      "RANCANG",
                      style: myfont(
                        36,
                        FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Your Personal Task Manager",
                      style: myfont(
                        17,
                        FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 16,
              ),
              alignment: Alignment.bottomCenter,
              child: CustomButtom(
                OnPressed: () {},
                BgColor: clrPrimary,
                ButtonInlinePadd: 24,
                BorderColor: Colors.transparent,
                TextAlignment: Alignment.centerLeft,
                ButtonText: "Getting Started",
                ButtonIcon: Icons.arrow_forward_ios_rounded,
                ButtonIconSize: 20,
                IconAlignment: Alignment.centerRight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
