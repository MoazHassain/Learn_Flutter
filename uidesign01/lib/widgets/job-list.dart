import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uidesign01/model/job-model.dart';
import 'package:uidesign01/widgets/job_details.dart';

class JobList extends StatelessWidget {
  const JobList({Key? key}) : super(key: key);
  // final jo
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      ),
      height: 200,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: generateJobList.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                isScrollControlled: true,
                context: context,
                builder: (context) => JobDetails(
                  Model: generateJobList[index],
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 26,
                horizontal: 26,
              ),
              width: MediaQuery.of(context).size.width * 0.65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        padding: EdgeInsets.all(4),
                        margin: EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color.fromARGB(150, 146, 216, 249),
                        ),
                        child: Image.asset(
                          "${generateJobList[index].companyLogo}",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        "${generateJobList[index].companyName}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(200, 54, 54, 54),
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.bookmark_outline_outlined,
                          color: Color.fromARGB(200, 76, 76, 76),
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "${generateJobList[index].jobTitle}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(200, 57, 57, 57),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Color.fromARGB(255, 255, 211, 88),
                        size: 24,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "${generateJobList[index].companyAddress}",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(200, 57, 57, 57),
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ],
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
