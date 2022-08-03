import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uidesign01/model/job-model.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({Key? key, this.Model}) : super(key: key);

  final JobModel? Model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      padding: EdgeInsets.symmetric(
        vertical: 26,
        horizontal: 32,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            child: Container(
              height: 4,
              width: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 142, 142, 142),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          SizedBox(
            height: 46,
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: 16,
                ),
                child: Image(
                  width: 40,
                  height: 40,
                  image: AssetImage("${Model!.companyLogo}"),
                ),
              ),
              Text(
                "${Model!.companyName}",
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
              SizedBox(
                width: 8,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
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
            "${Model!.jobTitle}",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 56, 56, 56),
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
                "${Model!.companyAddress}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(200, 57, 57, 57),
                  height: 1.5,
                ),
              ),
              Spacer(),
              Icon(
                Icons.watch_later_outlined,
                color: Color.fromARGB(255, 255, 211, 88),
                size: 22,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "Full Time",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(200, 57, 57, 57),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 22,
          ),
          Text(
            "Requirement",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 56, 56, 56),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ...Model!.requirement!
              .map(
                (e) => Container(
                  margin: EdgeInsets.only(
                    bottom: 12,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 8,
                        height: 8,
                        margin: EdgeInsets.only(
                          top: 8,
                          right: 12,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 68, 68, 68),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.8,
                        ),
                        child: Text(
                          e,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 56, 56, 56),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
