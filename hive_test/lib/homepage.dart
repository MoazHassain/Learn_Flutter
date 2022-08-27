import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController countryController = TextEditingController();
  TextEditingController _updateController = TextEditingController();

  Box? myBox;

  @override
  void initState() {
    myBox = Hive.box('myBox');
    super.initState();
  }

  // List country = [
  //   "Bangladesh",
  //   "India",
  //   "Pakistan",
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hive Test",
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: countryController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    width: 1,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              // width: double.infinity,
              height: 38,
              child: ElevatedButton(
                onPressed: () {
                  var country = countryController.text;
                  myBox!.add(country);
                },
                child: Text(
                  "ADD",
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            // Expanded(child: )
            Expanded(
              // child: ListView.separated(
              //   physics: NeverScrollableScrollPhysics(),
              //   shrinkWrap: true,
              //   itemCount: country.length,
              //   itemBuilder: (context, index) {
              //     return Card(
              //       elevation: 6,
              //       child: ListTile(
              //         title: Text(
              //           country[index],
              //         ),
              //       ),
              //     );
              //   },
              //   separatorBuilder: (context, index) {
              //     return SizedBox(
              //       height: 4,
              //     );
              //   },
              // ),
              child: ValueListenableBuilder(
                valueListenable: Hive.box("myBox").listenable(),
                builder: (context, box, widget) {
                  return ListView.separated(
                    // physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: myBox!.keys.toList().length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 6,
                        child: ListTile(
                          title: Text(
                            myBox!.getAt(index).toString(),
                          ),
                          trailing: Container(
                            width: 100,
                            // color: Color.fromARGB(255, 240, 179, 38),
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    _updateController.text =
                                        myBox!.getAt(index);
                                    showDialog(
                                      context: context,
                                      useSafeArea: true,
                                      builder: (context) {
                                        return AlertDialog(
                                          content: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.8,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.6,
                                            child: Column(
                                              children: [
                                                TextField(
                                                  controller: _updateController,
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                      borderSide: BorderSide(
                                                        width: 1,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 16,
                                                ),
                                                SizedBox(
                                                  // width: double.infinity,
                                                  height: 38,
                                                  child: ElevatedButton(
                                                    onPressed: () async {
                                                      myBox!.putAt(
                                                          index,
                                                          _updateController
                                                              .text);
                                                    },
                                                    child: Text(
                                                      "UPDATE",
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  splashRadius: 20,
                                  icon: Icon(
                                    Icons.edit,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                IconButton(
                                  onPressed: () {
                                    myBox!.deleteAt(index);
                                  },
                                  splashRadius: 20,
                                  icon: Icon(
                                    Icons.delete_rounded,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 4,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
