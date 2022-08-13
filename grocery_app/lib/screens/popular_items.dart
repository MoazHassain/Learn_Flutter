import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_app/themes/theme_model.dart';

import '../datas/data.dart';
import '../models/item.dart';

class PopularItems extends StatelessWidget {
  PopularItems({Key? key, this.themeNotifier}) : super(key: key);
  ThemeModel? themeNotifier;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeNotifier!.isDark
          ? Color(0xff121420)
          : Color.fromARGB(255, 255, 252, 251),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Popular Items",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: Container(
                margin: EdgeInsets.only(
                  top: 12,
                ),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // childAspectRatio: 1,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: popularItems.length,
                    itemBuilder: (context, index) {
                      ItemModel popitem = popularItems[index];
                      return Container(
                        height: 250,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Align(
                              // alignment: Alignment.bottomCenter,
                              child: Container(
                                width: 150,
                                height: 130,
                                padding: EdgeInsets.symmetric(
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: themeNotifier!.isDark
                                      ? Color.fromARGB(197, 31, 33, 49)
                                      : Color.fromARGB(255, 233, 233, 233),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "${popitem.name}",
                                    style: TextStyle(
                                      color: themeNotifier!.isDark
                                          ? Color(0xffffffff)
                                          : Colors.deepOrange,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: 110,
                                  height: 110,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(200),
                                    // image: DecorationImage(
                                    //   image: AssetImage(
                                    //     "${popitem.imageURL}",
                                    //   ),
                                    // ),
                                  ),
                                  clipBehavior: Clip.hardEdge,
                                  child: Image.asset(
                                    "${popitem.imageURL}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
