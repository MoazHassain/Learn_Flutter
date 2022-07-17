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

  List _hotelImg = [
    "https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG90ZWxzfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://images.unsplash.com/photo-1566073771259-6a8506099945?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aG90ZWx8ZW58MHx8MHx8&w=1000&q=80",
    "https://images.unsplash.com/photo-1582719508461-905c673771fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGhvdGVsfGVufDB8fDB8fA%3D%3D&w=1000&q=80",
    "https://www.idealtrip.net/wp-content/uploads/2022/02/hotel-ideal-trip.jpg",
    "https://media.istockphoto.com/photos/3d-render-of-hotel-entrance-and-reception-picture-id908258590?k=20&m=908258590&s=612x612&w=0&h=yoQWtVKqfgb2Nhza5bEOh8oHn1LqU4b53LNasRjZQiA=",
  ];

  List _fasIcon = [
    Icons.wifi,
    Icons.air,
    Icons.dining_outlined,
    Icons.cable,
  ];

  List _fasText = [
    "WIFI",
    "AC",
    "DINING",
    "CABLE",
  ];

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
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: 26,
            vertical: 26,
          ),
          child: Stack(
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Hotels For You",
                          style: myFonts(20, Color.fromARGB(255, 41, 41, 41),
                              FontWeight.w700),
                        ),
                        Spacer(),
                        Icon(
                          Icons.edit,
                          size: 20,
                          color: Color.fromARGB(255, 90, 90, 90),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.search,
                          size: 28,
                          color: Color.fromARGB(255, 81, 145, 219),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "150 results",
                      style: myFonts(18, Color.fromARGB(255, 128, 128, 128),
                          FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 26,
                    ),
                    height: 60,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: _hotelImg.length,
                      itemBuilder: (context, index) {
                        return Container(
                          // margin: EdgeInsets.only(
                          //   right: 20,
                          // ),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            image: DecorationImage(
                              image: NetworkImage(
                                _hotelImg[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 20,
                          width: 26,
                        );
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 26,
                    ),
                    height: 4,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 78, 148, 228),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          width: 1,
                          color: Color.fromARGB(100, 146, 200, 255),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(12, 0, 0, 0),
                            offset: Offset(0, 4),
                            blurRadius: 6,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.27,
                            padding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://www.swissotel.com/assets/0/92/3686/3768/3770/6442451433/ae87da19-9f23-450a-8927-6f4c700aa104.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Warda Hotel & Resort",
                                  style: myFonts(
                                    22,
                                    Color.fromARGB(255, 255, 255, 255),
                                    FontWeight.w600,
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 18,
                                  backgroundColor:
                                      Color.fromARGB(146, 255, 255, 255),
                                  child: Icon(
                                    Icons.edit_location_outlined,
                                    size: 20,
                                    color: Color.fromARGB(255, 136, 208, 240),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "\$600.00",
                                        style: myFonts(
                                          20,
                                          Color.fromARGB(255, 78, 161, 255),
                                          FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "Booking ID: 9837432",
                                        style: myFonts(
                                          20,
                                          Color.fromARGB(255, 33, 33, 33),
                                          FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "Wickwicky Hotel",
                                        style: myFonts(
                                          14,
                                          Color.fromARGB(255, 159, 159, 159),
                                          FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 15,
                                    horizontal: 20,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1000),
                                    border: Border.all(
                                      width: 4,
                                      color: Color.fromARGB(255, 215, 241, 255),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "6.0",
                                        style: myFonts(
                                          24,
                                          Color.fromARGB(255, 31, 210, 147),
                                          FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        "Rating",
                                        style: myFonts(
                                          12,
                                          Color.fromARGB(255, 138, 178, 199),
                                          FontWeight.w600,
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
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 26,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Facilities",
                          style: myFonts(
                            24,
                            Color.fromARGB(255, 36, 36, 36),
                            FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text("SEE MORE"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                margin: EdgeInsets.only(
                                  bottom: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  // border: Border.all(
                                  //   color: Color.fromARGB(255, 228, 228, 228),
                                  //   width: 1,
                                  // ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(30, 0, 0, 0),
                                      offset: Offset(0, 4),
                                      blurRadius: 6,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Icon(
                                  _fasIcon[index],
                                  color: Color.fromARGB(255, 78, 161, 255),
                                ),
                              ),
                              Text(
                                _fasText[index],
                                style: myFonts(
                                  13,
                                  Color.fromARGB(255, 36, 36, 36),
                                  FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 70,
                          height: 20,
                        );
                      },
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 60,
                left: 60,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 168, 206, 253),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Booking Now",
                              style: myFonts(
                                18,
                                Color.fromARGB(255, 48, 76, 112),
                                FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 20,
                        child: Icon(
                          Icons.check_circle,
                          color: Color.fromARGB(255, 48, 76, 112),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
