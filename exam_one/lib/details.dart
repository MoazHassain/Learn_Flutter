import 'package:exam_one/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  myFonts(double size, Color clr, FontWeight fw) {
    return GoogleFonts.montserrat(fontSize: size, color: clr, fontWeight: fw);
  }

  List productImg = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnsvt5IqKhnsnUglRi1RrLamaHL8HU_SeAmA&usqp=CAU",
    "data:image/jpeg;base64,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",
    "data:image/jpeg;base64,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",
  ];
  List productPrice = [
    "\$160",
    "\$250",
    "\$200",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 237, 240),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(left: 16),
          child: Icon(
            Icons.menu,
            color: Color.fromARGB(255, 47, 47, 47),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Color.fromARGB(255, 65, 65, 65),
              size: 20,
            ),
            Text(
              "Indonesia",
              style: myFonts(
                20,
                Color.fromARGB(255, 65, 65, 65),
                FontWeight.w500,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Color.fromARGB(255, 158, 158, 158),
              size: 22,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.notifications_active_outlined,
              color: Color.fromARGB(255, 65, 65, 65),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              margin: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 119, 119, 119),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Wedding Dress",
                    style: myFonts(
                      16,
                      Color.fromARGB(255, 188, 188, 188),
                      FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 245, 140, 69),
                    child: Icon(
                      Icons.filter_list_rounded,
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 16,
                    ),
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                            // color: Color(0xff000000),
                            borderRadius: BorderRadius.circular(14),
                            image: DecorationImage(
                              image: NetworkImage(
                                productImg[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 14,
                            left: 4,
                            right: 4,
                          ),
                          // width: ,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  "Dress",
                                  style: myFonts(
                                    18,
                                    Color.fromARGB(255, 56, 56, 56),
                                    FontWeight.w600,
                                  ),
                                ),
                              ),
                              // Spacer(),
                              Container(
                                child: Text(
                                  productPrice[index],
                                  style: myFonts(
                                    18,
                                    Color.fromARGB(255, 245, 140, 69),
                                    FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 16,
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://cdn0.weddingwire.com/vendor/500330/3_2/960/jpg/doubletreebyhiltonanaheimorangecountyweddingphotography-moniqueandsteven-encorstudio-30_51_33005-163675948074289.jpeg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Spacer(),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 16,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Color.fromARGB(255, 223, 69, 103),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  "20k",
                                  style: myFonts(
                                    18,
                                    Color.fromARGB(255, 72, 72, 72),
                                    FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(146, 0, 0, 0),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 20,
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Wedding Venue",
                                  style: myFonts(
                                    20,
                                    Color.fromARGB(255, 221, 221, 221),
                                    FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 12,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 22,
                                        color:
                                            Color.fromARGB(195, 255, 255, 255),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Lamongan, East Java",
                                        style: myFonts(
                                          16,
                                          Color.fromARGB(195, 255, 255, 255),
                                          FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: 26,
                            backgroundColor: Color.fromARGB(255, 33, 190, 156),
                            child: Icon(
                              Icons.add,
                              color: Color(0xffffffff),
                              size: 30,
                            ),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffffffff),
        elevation: 0,
        currentIndex: 0,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: "Home",
            // backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              size: 30,
            ),
            label: "Product",
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_copy_outlined,
              size: 30,
            ),
            label: "Category",
            backgroundColor: Colors.transparent,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 30,
            ),
            label: "Category",
            backgroundColor: Colors.transparent,
          ),
        ],
        selectedItemColor: Color.fromARGB(255, 245, 140, 69),
        unselectedItemColor: Color.fromARGB(255, 92, 92, 92),
      ),
    );
  }
}
