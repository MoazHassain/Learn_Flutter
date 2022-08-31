import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_demo/screen/homepage.dart';
import 'package:firebase_demo/screen/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DbHelpers {
  SignUp(email, password, context) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      var authCredential = userCredential.user;
      if (authCredential!.uid.isNotEmpty) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      } else {
        print("Sign Up failed");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
