import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uidesign01/home_appbar.dart';
import 'package:uidesign01/searchbar.dart';
import 'package:uidesign01/taglist.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Color.fromARGB(40, 144, 144, 144),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  HomeAppbar(),
                  SearchBar(),
                  TagList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
