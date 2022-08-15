import 'package:doctor_appointment_app/screen/format_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../datas/data.dart';
import '../models/doctor_model.dart';
import '../screen/doctor.dart';
import 'buttons.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: doctorList.length,
        itemBuilder: (context, index) {
          DoctorModel doctorItems = doctorList[index];
          return Container(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 12,
                  color: Color.fromARGB(10, 28, 51, 91),
                ),
              ],
              color: Color(0xffffffff),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "${doctorItems.imageURL}",
                        width: 90,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "${doctorItems.name}",
                          style: myfonts(
                            18,
                            Color(0xff1C335B),
                            FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "${doctorItems.occupation}",
                          style: myfonts(
                            16,
                            Color(0xff9BA6B4),
                            FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Color.fromARGB(255, 251, 180, 14),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "${doctorItems.rating} star",
                              style: myfonts(
                                16,
                                Color(0xff1C335B),
                                FontWeight.w700,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Fee starts\nfrom",
                          style: myfonts(
                            16,
                            Color(0xff9BA6B4),
                            FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          "${doctorItems.fee}",
                          style: myfonts(
                            28,
                            Color(0xff1C335B),
                            FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    CustomButtom(
                      // ButtonWidth: double.infinity,
                      OnPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ChooseFormat(),
                          ),
                        );
                      },
                      BgColor: Color(0xff0957DE),
                      ButtonElevation: 3,
                      ShadowColor: Color.fromARGB(30, 28, 51, 91),
                      ButtonRadius: 10,
                      ButtonText: "Connect",
                      ButtonTextColor: Color.fromARGB(255, 255, 255, 255),
                      ButtonFontsize: 17,
                      ButtonFontweight: FontWeight.w600,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 16,
          );
        },
      ),
    );
  }
}
