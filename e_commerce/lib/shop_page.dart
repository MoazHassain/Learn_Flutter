import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

myfonts(double size, Color clr, FontWeight fw) {
  return GoogleFonts.montserrat(fontSize: size, color: clr, fontWeight: fw);
}

class _ShopPageState extends State<ShopPage> {
  List _products = ["Computer", "Laptop", "Mobile", "Keyboard", "Mouse"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xFFDFF6FF),
          padding: EdgeInsets.symmetric(
            vertical: 36,
            horizontal: 26,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 16),
                child: Text("E-Store",
                    style: myfonts(36, Color(0xff06283D), FontWeight.w700)),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16),
                child: Text(
                  "Made for Easy Life",
                  style: GoogleFonts.montserrat(
                    color: Color(0xFF1363DF),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        right: 20,
                      ),
                      padding: EdgeInsets.all(30),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: Color(0xff06283D),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "30% discount",
                              style: myfonts(
                                  20, Color(0xffffffff), FontWeight.w400),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Expanded(
                              flex: 1,
                              child: Container(
                                child: Image.network(
                                  "https://img.lovepik.com/free-png/20220127/lovepik-skin-care-products-png-image_401871906_wh300.png",
                                  width: 100,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        right: 20,
                      ),
                      padding: EdgeInsets.all(30),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: Color(0xff06283D),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "40% discount",
                              style: myfonts(
                                  20, Color(0xffffffff), FontWeight.w400),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Expanded(
                              flex: 1,
                              child: Container(
                                child: Image.network(
                                  "https://img.lovepik.com/free-png/20220127/lovepik-skin-care-products-png-image_401871906_wh300.png",
                                  width: 100,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      width: 300,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: Color(0xff06283D),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Text(
                              "50% discount",
                              style: myfonts(
                                  20, Color(0xffffffff), FontWeight.w400),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Expanded(
                              flex: 1,
                              child: Container(
                                child: Image.network(
                                  "https://img.lovepik.com/free-png/20220127/lovepik-skin-care-products-png-image_401871906_wh300.png",
                                  width: 100,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: myfonts(20, Color(0xff06283D), FontWeight.w700),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 16,
                ),
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _products.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        right: 20,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff06283D),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 16,
                          ),
                          child: Text(
                            _products[index],
                            style:
                                myfonts(20, Color(0xffDFF6FF), FontWeight.w400),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
