import 'package:exam_two/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/custom-button.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButtom(
          OnPressed: () {},
          ButtonWidth: 38,
          ButtonElevation: 0,
          BgColor: clrWhite000,
          BorderColor: Colors.transparent,
          ButtonInlinePadd: 0,
          borderRadius: 12,
          ButtonText: "",
          ButtonIcon: Icons.arrow_back_ios_new_rounded,
          ButtonIconSize: 18,
          IconAlignment: Alignment.center,
          IconColor: clrBlack100,
        ),
        Spacer(),
        CustomButtom(
          OnPressed: () {},
          ButtonWidth: 38,
          ButtonElevation: 0,
          BgColor: Colors.transparent,
          BorderColor: clrWhite000,
          ButtonInlinePadd: 0,
          borderRadius: 12,
          ButtonText: "",
          ButtonIcon: Icons.search_rounded,
          ButtonIconSize: 18,
          IconAlignment: Alignment.center,
          IconColor: clrBlack100,
        ),
      ],
    );
  }
}
