import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:textfields/after_login.dart';
import 'package:textfields/custom_text_field.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xffD3959B),
              Color(0xffBFE6BA),
            ],
          ),
        ),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.65,
            height: 300,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Positioned(
                //   bottom: -100,
                //   left: 0,
                //   right: 0,
                //   child: Text(
                //     "$email",
                //   ),
                // ),
                Positioned(
                  bottom: 10,
                  right: 30,
                  left: 30,
                  // width: double.minPositive,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(
                        top: 30,
                        bottom: 25,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          // topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                      primary: Color.fromARGB(255, 242, 217, 221),
                    ),
                    onPressed: () {
                      // setState(() {
                      //   email = emailController.text;
                      // });
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return After_login(
                                email: emailController.text,
                                password: passwordController.text,
                              );
                            },
                          ),
                        );
                        print("OK");
                      } else {
                        print("not OK");
                      }
                    },
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  padding: EdgeInsets.only(
                    top: 70,
                    left: 30,
                    right: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 242, 244),
                    borderRadius: BorderRadius.circular(20),
                    // boxShadow: BoxShadow[],
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(30, 0, 0, 0),
                        offset: Offset(0, 4),
                        blurRadius: 12,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          obsecure: false,
                          controller: emailController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Email";
                            }
                            if (!value.contains("@")) {
                              return "invalid Email";
                            }
                          },
                          hintText: "Email ID",
                          preIcon: Icons.email_outlined,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        CustomTextField(
                          controller: passwordController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Password";
                            }
                            // if (!value == 3) {
                            //   return "too short";
                            // }
                          },
                          obsecure: _isObsecure,
                          hintText: "Password",
                          preIcon: Icons.lock,
                          suOnpress: () {
                            setState(
                              () {
                                _isObsecure = !_isObsecure;
                              },
                            );
                          },
                          suIcon: _isObsecure == true
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -50,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff2C394B),
                    radius: 50,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? email;
}
