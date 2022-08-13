import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_app/datas/data.dart';
import 'package:grocery_app/models/shop.dart';
import 'package:grocery_app/themes/theme_model.dart';

class ShopList extends StatelessWidget {
  ShopList({Key? key, this.themeNotifier}) : super(key: key);

  ThemeModel? themeNotifier;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      height: 130,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: shopList.length,
        itemBuilder: (context, index) {
          ShopModel shop = shopList[index];
          return Container(
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.hardEdge,
            child: Stack(
              children: [
                ClipRRect(
                  // borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "${shop.imageurl}",
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: themeNotifier!.isDark
                      ? Color.fromARGB(100, 18, 20, 32)
                      : Color.fromARGB(130, 255, 255, 255),
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${shop.name}",
                        style: TextStyle(
                          color: themeNotifier!.isDark
                              ? Colors.white
                              : Color.fromARGB(255, 10, 13, 32),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "${shop.address}",
                        style: TextStyle(
                          color: themeNotifier!.isDark
                              ? Colors.white
                              : Color.fromARGB(255, 10, 13, 32),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Shop Now",
                          style: TextStyle(
                            color: Color.fromARGB(255, 10, 13, 32),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 12,
          );
        },
      ),
    );
  }
}
