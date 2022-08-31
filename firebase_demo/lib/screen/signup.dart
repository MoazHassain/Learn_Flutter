import 'package:firebase_demo/db-helper.dart';
import 'package:firebase_demo/screen/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
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

                  var obj = DbHelpers().SignUp(eText, pText, context);
                },
                child: Text(
                  "Sign Up",
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
                    builder: (_) => SignIn(),
                  ),
                );
              },
              child: Text(
                "Already Registered? Log In",
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
