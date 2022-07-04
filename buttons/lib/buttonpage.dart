import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class buttons_demo extends StatefulWidget {
  const buttons_demo({Key? key}) : super(key: key);

  @override
  State<buttons_demo> createState() => _buttons_demoState();
}

class _buttons_demoState extends State<buttons_demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // primary: false,
        // leading: Icon(
        //   Icons.add_circle_outlined,
        //   size: 40,
        // ),
        title: Text("Button Demo"),
        centerTitle: true,
        // titleSpacing: 20,
        elevation: 6,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.only(
                        top: 16,
                        bottom: 16,
                        left: 24,
                        right: 24,
                      ),
                      primary: Colors.indigo,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Text Button",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(
                        top: 16,
                        bottom: 16,
                        left: 24,
                        right: 24,
                      ),
                      primary: Colors.indigo,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Eleveted",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.only(
                        top: 16,
                        bottom: 16,
                        left: 24,
                        right: 24,
                      ),
                      primary: Colors.indigo,
                      side: BorderSide(
                        width: 2,
                        color: Colors.indigo,
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Outlined",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(
                        top: 16,
                        bottom: 16,
                        left: 24,
                        right: 24,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      primary: Colors.indigo,
                    ),
                    onPressed: () {},
                    child: Text(
                      "Rounded",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(
                        top: 16,
                        bottom: 16,
                        left: 24,
                        right: 24,
                      ),
                      primary: Colors.indigo,
                    ),
                    onPressed: () {},
                    icon: Icon(
                      Icons.android,
                    ),
                    label: Text(
                      "Eleveted Icon",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "Material",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.indigo,
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 26,
                    ),
                    animationDuration: Duration(seconds: 500),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.android,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
