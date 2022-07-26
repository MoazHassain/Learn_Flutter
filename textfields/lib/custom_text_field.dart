import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    this.validator,
    this.controller,
    this.preIcon,
    this.suIcon,
    this.suOnpress,
    this.hintText,
    required this.obsecure,
  }) : super(key: key);

  dynamic validator;
  TextEditingController? controller;
  IconData? preIcon, suIcon;
  dynamic suOnpress;
  String? hintText;
  bool obsecure;
  // bool _isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: obsecure,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        focusColor: Colors.white,
        contentPadding: EdgeInsets.all(0),
        filled: true,
        fillColor: Color(0xff2C394B),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color.fromARGB(255, 189, 189, 189),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            width: 0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            width: 0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            width: 0,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(0),
          borderSide: BorderSide(
            width: 0,
          ),
        ),
        prefixIcon: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          margin: EdgeInsets.only(
            right: 16,
          ),
          color: Color(0xff082032),
          child: Icon(
            preIcon,
            color: Colors.white,
          ),
        ),
        suffixIcon: IconButton(
          onPressed: suOnpress,
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          icon: Icon(
            suIcon,
            // _isObsecure == true ? Icons.visibility : Icons.visibility_off,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
