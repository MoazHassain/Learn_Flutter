import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blueGrey[800],
          padding: EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey[600],
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1583864697784-a0efc8379f70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 22,
                  bottom: 16,
                ),
                child: Text(
                  "Marc Andres",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.blueGrey[100],
                  ),
                ),
              ),
              Text(
                "Web Designer",
                style: TextStyle(
                  color: Colors.blueGrey[100],
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Divider(
                color: Colors.blueGrey,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: Card(
                  color: Colors.transparent,
                  child: ListTile(
                    tileColor: Colors.blueGrey[900],
                    leading: Icon(
                      Icons.present_to_all,
                      color: Colors.blueGrey[100],
                    ),
                    title: Text(
                      "Project 01",
                      style: TextStyle(
                        color: Colors.blueGrey[100],
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              Container(
                child: Card(
                  color: Colors.transparent,
                  child: ListTile(
                    tileColor: Colors.blueGrey[900],
                    leading: Icon(
                      Icons.precision_manufacturing_outlined,
                      color: Colors.blueGrey[100],
                    ),
                    title: Text(
                      "Project 02",
                      style: TextStyle(
                        color: Colors.blueGrey[100],
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 36,
                  horizontal: 36,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue[600],
                      ),
                      child: Icon(
                        Icons.facebook,
                        size: 40,
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue[600],
                      ),
                      child: Icon(
                        Icons.g_mobiledata,
                        size: 46,
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue[600],
                      ),
                      child: Icon(
                        Icons.woo_commerce,
                        size: 40,
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                    ),
                    Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue[600],
                      ),
                      child: Icon(
                        Icons.call,
                        size: 26,
                        color: Colors.white,
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
