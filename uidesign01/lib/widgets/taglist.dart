import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  List tagList = [
    "All",
    "⚡  Popular",
    "⭐  Featured",
  ];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 20,
      ),
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: tagList.length,
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selected = index;
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 6,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selected == index
                    ? Color.fromARGB(255, 146, 216, 249)
                    : Colors.transparent,
                border: Border.all(
                  color: selected == index
                      ? Colors.transparent
                      : Color.fromARGB(255, 146, 216, 249),
                ),
              ),
              child: Text(
                tagList[index],
                style: TextStyle(
                  color: Color.fromARGB(255, 59, 59, 59),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (_, index) {
          return SizedBox(
            width: 20,
          );
        },
      ),
    );
  }
}
