import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/screens/homepage/carousel.dart';
import 'package:ecommerce_app/screens/homepage/app_bar.dart';
import 'package:ecommerce_app/screens/homepage/category-part.dart';
import 'package:ecommerce_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              width: MediaQuery.of(context).size.width * 2,
              height: MediaQuery.of(context).size.width * 2,
              child: Transform.translate(
                offset: Offset(MediaQuery.of(context).size.width * -0.5,
                    MediaQuery.of(context).size.width * -1.1),
                child: Icon(
                  Icons.circle,
                  size: MediaQuery.of(context).size.width * 2,
                  color: clrWhite100,
                ),
              ),
            ),
            Container(
              child: ListView(
                children: [
                  // appbar/header
                  CustomAppBar(),

                  // search bar
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: TextFormField(
                      // controller: ,

                      decoration: InputDecoration(
                        hintText: "Search Category",
                        hintStyle: myfont(14),
                        contentPadding: EdgeInsets.all(6),
                        prefixIcon: Container(
                          margin: EdgeInsets.only(
                            left: 16,
                            right: 8,
                          ),
                          child: Icon(
                            Icons.search,
                            color: clrPrimary,
                          ),
                        ),
                        filled: true,
                        fillColor: clrWhite000,
                        hoverColor: clrWhite000,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // carousel part on carousel.dart
                  CarouselPart(),

                  // category part
                  Categories(),

                  // selling part
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 24,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Best Selling",
                              style: myfont(
                                18,
                                FontWeight.w700,
                                clrBlack,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Image(
                              image: AssetImage("assets/images/Fire.png"),
                              width: 18,
                              height: 18,
                              fit: BoxFit.cover,
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "See all",
                                style: myfont(
                                  14,
                                  FontWeight.w500,
                                  clrPrimary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          height: 220,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 24,
                                      horizontal: 16,
                                    ),
                                    width: MediaQuery.of(context).size.width *
                                            0.5 -
                                        34,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: clrWhite100,
                                    ),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/images/meat-selling.png",
                                        ),
                                        SizedBox(
                                          height: 24,
                                        ),
                                        Container(
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Bell Pepper Red",
                                                style: myfont(
                                                  14,
                                                  FontWeight.bold,
                                                  clrBlack,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "1kg, 4\$",
                                                style: myfont(
                                                  16,
                                                  FontWeight.bold,
                                                  clrSecondary,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 16,
                                    right: 16,
                                    child: SizedBox(
                                      width: 40,
                                      height: 40,
                                      child: FloatingActionButton(
                                        onPressed: () {},
                                        // shape: ,
                                        child: Icon(
                                          Icons.add,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 16,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
