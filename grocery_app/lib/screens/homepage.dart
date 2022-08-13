import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:grocery_app/datas/data.dart';
import 'package:grocery_app/models/item.dart';
import 'package:grocery_app/widgets/category_list.dart';
import 'package:grocery_app/widgets/popular_list.dart';
import 'package:grocery_app/widgets/shop_list.dart';
import 'package:provider/provider.dart';

import '../themes/theme_model.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeModel themeNotifier, child) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: themeNotifier.isDark
                ? Color(0xff121420)
                : Color.fromARGB(255, 255, 252, 251),
            body: Container(
              child: ListView(
                children: [
                  // header
                  Container(
                    margin: EdgeInsets.only(
                      top: 16,
                      left: 16,
                      right: 16,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Hand Picked fresh\nitems for you!",
                          style: TextStyle(
                            color: themeNotifier.isDark
                                ? Color.fromARGB(255, 232, 232, 232)
                                : Color(0xff121420),
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        Container(
                          child: Icon(
                            Icons.notifications_none_outlined,
                            size: 30,
                            color: themeNotifier.isDark
                                ? Color.fromARGB(255, 232, 232, 232)
                                : Color.fromARGB(255, 31, 15, 10),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        FlutterSwitch(
                          height: 35,
                          width: 60,
                          activeColor: Color.fromARGB(83, 255, 86, 34),
                          activeToggleColor: Color.fromARGB(255, 45, 45, 45),
                          activeIcon: Icon(
                            Icons.wb_sunny_rounded,
                            color: Color(0xffffffff),
                          ),
                          inactiveColor: Color.fromARGB(82, 255, 255, 255),
                          inactiveToggleColor:
                              Color.fromARGB(255, 232, 232, 232),
                          inactiveIcon: Icon(
                            Icons.nightlight,
                            color: Color.fromARGB(255, 45, 45, 45),
                          ),
                          value: themeNotifier.isDark ? false : true,
                          onToggle: (value) {
                            themeNotifier.isDark
                                ? themeNotifier.isDark = false
                                : themeNotifier.isDark = true;
                          },
                        ),
                      ],
                    ),
                  ),
                  // Categories
                  Categories(
                    themeNotifier: themeNotifier,
                  ),
                  ShopList(
                    themeNotifier: themeNotifier,
                  ),
                  PopularList(
                    themeNotifier: themeNotifier,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
