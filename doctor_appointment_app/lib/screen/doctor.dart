import 'package:doctor_appointment_app/datas/data.dart';
import 'package:doctor_appointment_app/models/doctor_model.dart';
import 'package:doctor_appointment_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/doctor_list.dart';
import '../widgets/profession_list.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

myfonts(double size, Color clr, FontWeight fw) {
  return TextStyle(
      fontFamily: "Gilroy", fontSize: size, color: clr, fontWeight: fw);
}

class _DoctorPageState extends State<DoctorPage> {
  bool? isOnline = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 255),
      body: ListView(
        shrinkWrap: true,
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
                    CustomButtom(
                      OnPressed: () {
                        Navigator.of(context).pop();
                      },
                      ButtonWidth: 40,
                      BgColor: Color(0xffffffff),
                      ButtonElevation: 4,
                      ShadowColor: Color.fromARGB(30, 28, 51, 91),
                      ButtonRadius: 12,
                      ButtonText: "",
                      ButtonIcon: Icons.arrow_back_ios_new_rounded,
                      IconAlignment: Alignment.center,
                      ButtonIconSize: 16,
                      IconColor: Color(0xff9BA6B4),
                    ),
                    Text(
                      "Doctors",
                      style: myfonts(
                        20,
                        Color(0xff1C335B),
                        FontWeight.w700,
                      ),
                    ),
                    CustomButtom(
                      OnPressed: () {},
                      ButtonWidth: 42,
                      BgColor: Color(0xffffffff),
                      ButtonElevation: 4,
                      ShadowColor: Color.fromARGB(30, 28, 51, 91),
                      ButtonRadius: 12,
                      ButtonText: "",
                      ButtonIcon: Icons.search_rounded,
                      IconAlignment: Alignment.center,
                      ButtonIconSize: 18,
                      IconColor: Color.fromARGB(255, 147, 158, 172),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                  // margin: EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff0957DE),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isOnline = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: isOnline == true
                                ? Color.fromARGB(255, 255, 255, 255)
                                : Colors.transparent,
                          ),
                          child: Text(
                            "Online",
                            style: myfonts(
                              16,
                              isOnline == true
                                  ? Color(0xff0957DE)
                                  : Color.fromARGB(255, 255, 255, 255),
                              FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isOnline = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 12,
                          ),
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: isOnline == false
                                ? Color.fromARGB(255, 255, 255, 255)
                                : Colors.transparent,
                          ),
                          child: Text(
                            "Visit",
                            textAlign: TextAlign.center,
                            style: myfonts(
                              16,
                              isOnline == false
                                  ? Color(0xff0957DE)
                                  : Color.fromARGB(255, 255, 255, 255),
                              FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Container(
                  width: double.infinity,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Let's find your doctor",
                        style: myfonts(
                          22,
                          Color(0xff1C335B),
                          FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      // list of profession to choose
                      ProfessionList(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                // list of doctors
                DoctorList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
