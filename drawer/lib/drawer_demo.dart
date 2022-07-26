import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Drawer(
        elevation: 0,
        backgroundColor: Color.fromARGB(200, 28, 28, 28),
        // backgroundColor: Color.fromARGB(100, 0, 0, 0),
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: 26,
              ),
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      // color: Color(0xff000000),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSVkkH-YaZNqBBwGeTPxhVhgMgFWJzOLJ8Ww&usqp=CAU",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "John Wick",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffffffff),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "johnwick01@gmail.com",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffffffff),
                    ),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Sign Out",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        primary: Color(0xffffffff),
                        padding: EdgeInsets.all(20),
                        side: BorderSide(
                          width: 1,
                          color: Color(0xffffffff),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // padding: EdgeInsets.symmetric(
              //   horizontal: 20,
              // ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.edit,
                      color: Color(0xffffffff),
                    ),
                    title: Text(
                      "Add Leads",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star,
                      color: Color(0xffffffff),
                    ),
                    title: Text(
                      "Points",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.plus_one,
                      color: Color(0xffffffff),
                    ),
                    title: Text(
                      "Points Redemption",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Color(0xffffffff),
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.dashboard,
                      color: Color(0xffffffff),
                    ),
                    title: Text(
                      "Dashboard",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Color(0xffffffff),
                    ),
                    title: Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Divider(
              height: 1,
              color: Color(0xffffffff),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 20,
                    ),
                    child: Text(
                      "Communicate",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.lock,
                      color: Color(0xffffffff),
                    ),
                    title: Text(
                      "Privacy Policy",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Color(0xffffffff),
                    ),
                    title: Text(
                      "Contact Us",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    leading: Icon(
                      Icons.settings_applications_rounded,
                      color: Color(0xffffffff),
                    ),
                    title: Text(
                      "About App",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
