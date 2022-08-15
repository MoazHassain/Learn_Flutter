import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screen/doctor.dart';

class ProfessionList extends StatefulWidget {
  const ProfessionList({Key? key}) : super(key: key);

  @override
  State<ProfessionList> createState() => _ProfessionListState();
}

class _ProfessionListState extends State<ProfessionList> {
  List professionList = [
    "All",
    "Neurology",
    "Allergy Specialist",
    "General practitioner",
    "Dentist",
    "Dermatologist",
  ];
  var isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: professionList.length,
        itemBuilder: (context, index) {
          // DoctorModel doctorItems = doctorList[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                isSelected = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isSelected == index
                      ? Color(0xffAAE18F)
                      : Colors.transparent,
                  border: Border.all(
                    width: 1,
                    color: isSelected == index
                        ? Colors.transparent
                        : Color.fromARGB(91, 155, 166, 180),
                  )),
              child: Text(
                "${professionList[index]}",
                style: myfonts(
                  18,
                  isSelected == index
                      ? Color.fromARGB(255, 255, 255, 255)
                      : Color.fromARGB(179, 155, 166, 180),
                  FontWeight.w600,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 12,
          );
        },
      ),
    );
  }
}
