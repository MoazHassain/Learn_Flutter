import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/datas/data.dart';
import 'package:food_app/models/user.dart';
import 'package:food_app/widgets/recent_order.dart';
import 'package:food_app/widgets/restaurant_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 230, 114, 19),
        leading: Icon(Icons.person_pin),
        title: Text("Food Delivery"),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Cart (${currentUser.cart!.length})",
              style: TextStyle(
                color: Color(0xffffffff),
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: TextFormField(
              // controller: ,

              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(
                    left: 16.0,
                    right: 12,
                  ),
                  child: Icon(
                    Icons.search,
                  ),
                ),
                hintText: "Search",
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(
                    right: 8.0,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    splashRadius: 20,
                    icon: Icon(
                      Icons.close,
                      size: 24,
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff000000),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(50),
                  gapPadding: 4,
                ),
              ),
            ),
          ),
          RecentOrder(),
          SizedBox(
            height: 12,
          ),
          RestaurantList(),
        ],
      ),
    );
  }
}
