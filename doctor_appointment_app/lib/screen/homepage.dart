import 'package:doctor_appointment_app/screen/doctor.dart';
import 'package:doctor_appointment_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

myfonts(double size, Color clr, FontWeight fw) {
  return TextStyle(
    fontFamily: "Gilroy",
    fontSize: size,
    color: clr,
    fontWeight: fw,
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 255),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 26,
                bottom: 16,
                left: 26,
                right: 26,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/icons/charm_menu-meatball.png",
                      ),
                      // SvgPicture.asset(
                      //   "assets/icons/charm_menu-meatball.svg",
                      //   color: Color(0xff1C335B),
                      //   height: 26,
                      //   width: 26,
                      // ),
                      Column(
                        children: [
                          Text(
                            "Nancy Lawrence",
                            style: myfonts(
                              14,
                              Color(0xff1C335B),
                              FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/fluent_location.svg",
                                color: Color(0xff0957DE),
                                width: 18,
                                height: 18,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Los Angles,US",
                                style: myfonts(
                                  14,
                                  Color(0xff9BA6B4),
                                  FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      Container(
                        width: 40,
                        height: 42,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Color(0xffFAFAFE),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color.fromARGB(120, 155, 166, 180),
                            width: 1,
                          ),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/profile.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          // child: Image.asset(
                          //   "assets/images/profile.png",
                          //   fit: BoxFit.cover,
                          //   width: double.infinity,
                          //   height: double.infinity,
                          // ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Choose format",
                        style: myfonts(
                          24,
                          Color(0xff1C335B),
                          FontWeight.w700,
                        ),
                      ),
                      CustomButtom(
                        OnPressed: () {},
                        BgColor: Color(0xffFAFAFE),
                        ButtonElevation: 3,
                        ShadowColor: Color.fromARGB(30, 28, 51, 91),
                        ButtonRadius: 8,
                        ButtonText: "Skip",
                        ButtonTextColor: Color(0xff1C335B),
                        ButtonFontsize: 15,
                        ButtonFontweight: FontWeight.w600,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: 26,
                      horizontal: 46,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFE),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(10, 28, 51, 91),
                          blurRadius: 16,
                          offset: Offset(0, 0),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Online\nConsultation",
                          textAlign: TextAlign.center,
                          style: myfonts(
                            22,
                            Color(0xff1C335B),
                            FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xffAAE18F),
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/free_mobile.svg",
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Starting from \$50",
                          textAlign: TextAlign.center,
                          style: myfonts(
                            15,
                            Color(0xffAAE18F),
                            FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        CustomButtom(
                          ButtonWidth: double.infinity,
                          OnPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => DoctorPage(),
                              ),
                            );
                          },
                          BgColor: Color(0xffAAE18F),
                          ButtonElevation: 3,
                          ShadowColor: Color.fromARGB(30, 28, 51, 91),
                          ButtonRadius: 10,
                          ButtonText: "Find Doctor",
                          ButtonTextColor: Color.fromARGB(255, 255, 255, 255),
                          ButtonFontsize: 17,
                          ButtonFontweight: FontWeight.w600,
                          ButtonIcon: Icons.arrow_forward_ios_rounded,
                          IconAlignment: Alignment.centerRight,
                          ButtonIconSize: 18,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      vertical: 26,
                      horizontal: 46,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffFAFAFE),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(10, 28, 51, 91),
                          blurRadius: 16,
                          offset: Offset(0, 0),
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Visit\na Doctor",
                          textAlign: TextAlign.center,
                          style: myfonts(
                            22,
                            Color(0xff1C335B),
                            FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Color(0xff0957DE),
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/stethoscope-outline.svg",
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Starting from \$50",
                          textAlign: TextAlign.center,
                          style: myfonts(
                            15,
                            Color(0xff0957DE),
                            FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        CustomButtom(
                          ButtonWidth: double.infinity,
                          OnPressed: () {},
                          BgColor: Color(0xff0957DE),
                          ButtonElevation: 3,
                          ShadowColor: Color.fromARGB(30, 28, 51, 91),
                          ButtonRadius: 10,
                          ButtonText: "Book Appointment",
                          ButtonTextColor: Color.fromARGB(255, 255, 255, 255),
                          ButtonFontsize: 17,
                          ButtonFontweight: FontWeight.w600,
                          ButtonIcon: Icons.arrow_forward_ios_rounded,
                          IconAlignment: Alignment.centerRight,
                          ButtonIconSize: 18,
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
