import 'package:drawer/drawer_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Drawer Demo",
          style: TextStyle(),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      drawer: DrawerDemo(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1578662996442-48f60103fc96?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmxhY2slMjB0ZXh0dXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: InkWell(
            onTap: () {},
            child: ElevatedButton(
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              child: Text("Click Here"),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 50, 57, 67),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
