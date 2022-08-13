import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_app/datas/data.dart';
import 'package:grocery_app/screens/popular_items.dart';

import '../models/item.dart';
import '../themes/theme_model.dart';

class PopularList extends StatelessWidget {
  PopularList({Key? key, this.themeNotifier}) : super(key: key);
  ThemeModel? themeNotifier;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 16,
        ),
        height: 440,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Popular Items",
                  style: TextStyle(
                    color: themeNotifier!.isDark
                        ? Color.fromARGB(255, 232, 232, 232)
                        : Color(0xff121420),
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PopularItems(
                          themeNotifier: themeNotifier,
                        ),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 20,
                    ),
                  ),
                  child: Text(
                    "See All",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
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
                    itemCount: 4,
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
            // Container(
            //   // height: 200,
            //   child: GridView.count(
            //     crossAxisCount: 2,

            //     children: List.generate(4, (index) {
            //       ItemModel popitem = popularItems[index];
            //       return Container(
            //         height: 200,
            //         child: Text("${popitem.name}"),
            //       );
            //     }),
            //   ),
            // ),
            // Container(
            //   child: GridView.count(
            //     scrollDirection: Axis.horizontal,
            //     crossAxisCount: 1,
            //     mainAxisSpacing: 8,
            //     children: List.generate(5, (index) {
            //       ItemModel item = popularItems[index];
            //       return Container(
            //         padding: EdgeInsets.all(4),
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(16),
            //           image: DecorationImage(
            //             image: AssetImage(
            //               "${item.imageURL}",
            //             ),
            //             fit: BoxFit.cover,
            //           ),
            //         ),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.end,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Container(
            //               width: double.infinity,
            //               padding: EdgeInsets.symmetric(
            //                 vertical: 8,
            //                 horizontal: 8,
            //               ),
            //               decoration: BoxDecoration(
            //                 borderRadius: BorderRadius.circular(12),
            //                 color: themeNotifier!.isDark
            //                     ? Color.fromARGB(200, 18, 20, 32)
            //                     : Color.fromARGB(200, 255, 255, 255),
            //               ),
            //               child: Center(
            //                 child: Text(
            //                   "${item.name}",
            //                   style: TextStyle(
            //                     color: Colors.deepOrange,
            //                     fontSize: 20,
            //                     fontWeight: FontWeight.w600,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       );
            //     }),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
