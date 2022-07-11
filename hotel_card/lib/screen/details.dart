import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  var primaryBlack = Color(0xff001219);
  myFonts(double size, Color clr, FontWeight fw) {
    return GoogleFonts.notoSans(fontSize: size, color: clr, fontWeight: fw);
  }

  // colorBlack: 001219
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 56,
        leading: Container(
          margin: EdgeInsets.only(
            left: 20,
          ),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.12),
                offset: Offset(
                  0.0,
                  4.0,
                ),
                blurRadius: 12,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: primaryBlack,
            size: 18,
          ),
        ),
        title: Text(
          "Hotels",
          style: myFonts(20, primaryBlack, FontWeight.w800),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Text(
                    "Hotels For You",
                  ),
                  Spacer(),
                  Icon(
                    Icons.edit,
                  ),
                  Icon(
                    Icons.search,
                  ),
                ],
              ),
            ),
            Text(
              "150 results",
            ),
            Container(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      right: 20,
                    ),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 4,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.blue[600],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              child: Card(
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.27,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Column(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
