import 'package:class_model/details.dart';
import 'package:class_model/modal/user-model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 67, 114),
        elevation: 10,
        title: Text(
          "RESTAURANT",
        ),
        centerTitle: true,
      ),
      body: Container(
        // color: Color.fromARGB(255, 243, 67, 114),
        color: Color.fromARGB(255, 252, 214, 225),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                // height: double.infinity,
                // width: 300,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      // childAspectRatio: 1,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: myList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        clipBehavior: Clip.hardEdge,
                        margin: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 16,
                        ),
                        width: MediaQuery.of(context).size.width,
                        // height: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 6),
                              blurRadius: 12,
                              color: Color.fromARGB(90, 68, 8, 25),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(
                              "${myList[index].img}",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(
                                top: 16,
                                left: 20,
                                bottom: 20,
                              ),
                              color: Color.fromARGB(136, 109, 43, 61),
                              child: Text(
                                "${myList[index].name}",
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                // margin: ,
                clipBehavior: Clip.hardEdge,
                padding: EdgeInsets.only(
                  top: 20,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: ListView.separated(
                  itemCount: myList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Details(
                              Model: myList[index],
                            ),
                          ),
                        );
                      },
                      // tileColor: Color.fromARGB(255, 236, 127, 127),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 26,
                      ),
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          "${myList[index].img}",
                        ),
                      ),
                      title: Text(
                        "${myList[index].name}",
                        style: TextStyle(
                          // color: Color(0xffffffff),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      subtitle: Text(
                        "${myList[index].details}",
                        style: TextStyle(
                          // color: Color(0xffffffff),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Text(
                        myList[index].isMorning == true
                            ? "Breakfast"
                            : myList[index].isMorning == false
                                ? "Dinner"
                                : "Evening",
                        style: TextStyle(
                          // color: Color(0xffffffff),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 16,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
