import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class After_login extends StatefulWidget {
  After_login({Key? key, this.email, this.password}) : super(key: key);
  String? email, password;
  @override
  State<After_login> createState() => _After_loginState();
}

class _After_loginState extends State<After_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Login Successful \n Email:${widget.email} \n Password:${widget.password}",
        ),
      ),
    );
  }
}
