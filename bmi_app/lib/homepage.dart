import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 150;
  double weight = 50;
  double age = 25;
  bool? isMale = true;
  String? result;
  double? bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff041C32),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            color: Color(0xffF5F5F5),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  // vertical: 16,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: isMale == true
                                ? Color.fromARGB(255, 238, 29, 106)
                                : Color(0xff04293A),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 46,
                                color: Color(0xffF5F5F5),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "MALE",
                                style: TextStyle(
                                  color: Color(0xffF5F5F5),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: isMale == false
                                ? Color.fromARGB(255, 238, 29, 106)
                                : Color(0xff04293A),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 46,
                                color: Color(0xffF5F5F5),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                  color: Color(0xffF5F5F5),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              flex: 6,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 16,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff04293A),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: TextStyle(
                        color: Color(0xffF5F5F5),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${height}",
                          style: TextStyle(
                            color: Color(0xffF5F5F5),
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 6,
                            bottom: 3,
                          ),
                          child: Text(
                            "cm",
                            style: TextStyle(
                              color: Color(0xffF5F5F5),
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 10,
                        ),
                        overlayShape: RoundSliderOverlayShape(
                          overlayRadius: 20,
                        ),
                        thumbColor: Color.fromARGB(255, 28, 87, 147),
                        overlayColor: Color.fromARGB(53, 39, 110, 181),
                        // activeTrackColor: ,
                        inactiveTrackColor: Color.fromARGB(255, 216, 235, 255),
                      ),
                      child: Slider(
                        onChanged: (double newHeight) {
                          setState(() {
                            height = newHeight!.toDouble();
                          });
                        },
                        divisions: 100,
                        value: height!.toDouble(),
                        min: 50,
                        max: 250,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xff04293A),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                              style: TextStyle(
                                color: Color(0xffF5F5F5),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "${weight}",
                              style: TextStyle(
                                color: Color(0xffF5F5F5),
                                fontSize: 36,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 0) {
                                        weight--;
                                      }
                                    });
                                  },
                                  backgroundColor:
                                      Color.fromARGB(255, 18, 58, 97),
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (weight > 0) {
                                        weight++;
                                      }
                                    });
                                  },
                                  backgroundColor:
                                      Color.fromARGB(255, 18, 58, 97),
                                  child: Icon(Icons.add),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xff04293A),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: TextStyle(
                                color: Color(0xffF5F5F5),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "${age}",
                              style: TextStyle(
                                color: Color(0xffF5F5F5),
                                fontSize: 36,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age > 0) {
                                        age--;
                                      }
                                    });
                                  },
                                  backgroundColor:
                                      Color.fromARGB(255, 18, 58, 97),
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      if (age > 0) {
                                        age++;
                                      }
                                    });
                                  },
                                  backgroundColor:
                                      Color.fromARGB(255, 18, 58, 97),
                                  child: Icon(Icons.add),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  // bmi = 22.320524;
                  bmi = weight / (height * height) * 10000;
                  String? preciseBmi = bmi?.toStringAsFixed(2);
                  if (bmi! < 19) {
                    result = "UNDER WEIGHT!";
                  } else if (bmi! < 24) {
                    result = "NORMAL WEIGHT!";
                  } else if (bmi! < 30) {
                    result = "OVER WEIGHT!";
                  } else {
                    result = "OBESE!";
                  }
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: FittedBox(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            padding: EdgeInsets.symmetric(
                              horizontal: 26,
                              vertical: 26,
                            ),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 18, 58, 97),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  "BMI RESULT",
                                  style: TextStyle(
                                    color: Color(0xffF5F5F5),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "GENDER",
                                      style: TextStyle(
                                        color: Color(0xffF5F5F5),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      isMale == true ? "Male" : "Female",
                                      style: TextStyle(
                                        color: Color(0xffF5F5F5),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "HEIGHT",
                                      style: TextStyle(
                                        color: Color(0xffF5F5F5),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "${height}",
                                      style: TextStyle(
                                        color: Color(0xffF5F5F5),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "WEIGHT",
                                      style: TextStyle(
                                        color: Color(0xffF5F5F5),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "${weight}",
                                      style: TextStyle(
                                        color: Color(0xffF5F5F5),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "AGE",
                                      style: TextStyle(
                                        color: Color(0xffF5F5F5),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      "${age}",
                                      style: TextStyle(
                                        color: Color(0xffF5F5F5),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "SCORE",
                                  style: TextStyle(
                                    color: Color(0xffF5F5F5),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "${preciseBmi}",
                                  style: TextStyle(
                                    color: Color(0xffF5F5F5),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "$result",
                                  style: TextStyle(
                                    color: Color(0xffF5F5F5),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: double.infinity,
                  color: Color.fromARGB(255, 238, 29, 106),
                  child: Center(
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(
                        color: Color(0xffF5F5F5),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
