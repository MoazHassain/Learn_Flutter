import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();

  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> addUser() {
    return users.add({
      "first name": _firstNameController.text,
      "last name": _lastNameController.text,
      "age": _ageController.text,
      "phone": _phoneController.text,
      "address": _addressController.text
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextField(_firstNameController, "First Name"),
            SizedBox(
              height: 16,
            ),
            CustomTextField(_lastNameController, "Last Name"),
            SizedBox(
              height: 16,
            ),
            CustomTextField(_ageController, "Age"),
            SizedBox(
              height: 16,
            ),
            CustomTextField(_phoneController, "Phone"),
            SizedBox(
              height: 16,
            ),
            CustomTextField(_addressController, "Address"),
            SizedBox(
              height: 26,
            ),
            SizedBox(
              height: 38,
              child: ElevatedButton(
                onPressed: addUser,
                child: Text(
                  "Register",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextField CustomTextField(TextEditingController _controller, String _hint) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: _hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
