import 'package:doctor_appointment_app/datas/data.dart';
import 'package:doctor_appointment_app/models/fotmat_model.dart';
import 'package:doctor_appointment_app/screen/homepage.dart';
import 'package:doctor_appointment_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChooseFormat extends StatelessWidget {
  const ChooseFormat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 255),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 26,
              bottom: 16,
              left: 26,
              right: 26,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Text(
                  "Choose\nConsultation\nFormat",
                  style: myfonts(
                    32,
                    Color(0xff1C335B),
                    FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Container(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: FormatList.length,
                    itemBuilder: (context, index) {
                      FormatModel formatitems = FormatList[index];
                      return Container(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.width * 0.08,
                          horizontal: MediaQuery.of(context).size.width * 0.08,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 12,
                              color: Color.fromARGB(10, 28, 51, 91),
                            ),
                          ],
                          color: Color(0xffffffff),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 16,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: formatitems.IconBgColor,
                              ),
                              child: Icon(
                                formatitems.formatIcon,
                                color: Colors.white,
                                size: 26,
                              ),
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              "${formatitems.formatTitle}",
                              style: myfonts(
                                20,
                                Color(0xff1C335B),
                                FontWeight.w700,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xff9BA6B4),
                              size: 18,
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 26,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
