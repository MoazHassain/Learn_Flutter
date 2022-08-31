import 'package:firebase_demo/screen/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../db-helper.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(emailController, "Email", false),
            SizedBox(
              height: 16,
            ),
            CustomTextField(passController, "Password", true),
            SizedBox(
              height: 26,
            ),
            SizedBox(
              height: 38,
              child: ElevatedButton(
                onPressed: () {
                  var eText = emailController.text;
                  var pText = passController.text;

                  var obj = DbHelpers().SignIn(eText, pText, context);
                },
                child: Text(
                  "Sign In",
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => SignUp(),
                  ),
                );
              },
              child: Text(
                "Not Registered? Sign Up",
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextField CustomTextField(
      TextEditingController _controller, String _hint, bool obscure) {
    return TextField(
      controller: _controller,
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: _hint,
        labelText: _hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
