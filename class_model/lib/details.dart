import 'package:class_model/modal/user-model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Details extends StatelessWidget {
  Details({Key? key, this.Model}) : super(key: key);
  final UserModel? Model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: Color.fromARGB(255, 243, 67, 114),
        //   ),
        // ),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      "${Model!.img}",
                      // "${myList[0].img}",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.only(
                    // top: -20,
                    ),
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 26,
                ),
                decoration: BoxDecoration(
                  // color: Color.fromARGB(255, 23, 22, 22),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${Model!.name}",
                      style: TextStyle(
                        color: Color.fromARGB(255, 243, 67, 114),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "${Model!.details}",
                      style: TextStyle(
                        color: Color.fromARGB(255, 31, 31, 31),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Available at :",
                          style: TextStyle(
                            color: Color.fromARGB(255, 31, 31, 31),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          Model!.isMorning == true
                              ? "Breakfast"
                              : Model!.isMorning == false
                                  ? "Dinner"
                                  : "Evening",
                          style: TextStyle(
                            color: Color.fromARGB(255, 243, 67, 114),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
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
