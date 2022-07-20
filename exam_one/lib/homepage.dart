import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  myFonts(double size, Color clr, FontWeight fw) {
    return GoogleFonts.montserrat(fontSize: size, color: clr, fontWeight: fw);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(
          left: 26,
          right: 26,
          top: 20,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1506012787146-f92b2d7d6d96?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Travel with\ncomfort and\nsafety!",
              style: myFonts(
                36,
                Color(0xffffffff),
                FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Sign up",
                style: myFonts(
                  16,
                  Color(0xffffffff),
                  FontWeight.w600,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(24),
                primary: Color.fromARGB(255, 251, 94, 94),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
