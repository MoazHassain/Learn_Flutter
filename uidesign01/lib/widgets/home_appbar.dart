import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 30,
        bottom: 25,
        left: 20,
        right: 20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Home",
                style: TextStyle(
                  color: Color.fromARGB(255, 118, 118, 118),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Annie Bryant",
                style: TextStyle(
                  color: Color.fromARGB(255, 58, 58, 58),
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(
              right: 20,
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  transform: Matrix4.rotationZ(75),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Color.fromARGB(200, 124, 124, 124),
                    size: 26,
                  ),
                ),
                Positioned(
                  top: -8,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 211, 28, 28),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ClipOval(
            child: Image.asset(
              "assets/images/avatar.png",
              fit: BoxFit.cover,
              height: 45,
              width: 40,
            ),
          ),
        ],
      ),
    );
  }
}
