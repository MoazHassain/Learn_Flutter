import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 25,
      ),
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(
            "assets/images/search_bg.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fast Search",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "You can search quickly for\nthe job you want.",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 18,
              fontWeight: FontWeight.w400,
              height: 1.4,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            // controller: ,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                // horizontal: 20,
                vertical: 10,
              ),
              filled: true,
              fillColor: Color(0xffffffff),
              hintText: "Search",
              hintStyle: TextStyle(
                color: Color.fromARGB(255, 161, 161, 161),
                fontSize: 18,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                  width: 0,
                  color: Colors.transparent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                  width: 0,
                  color: Colors.transparent,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                  width: 0,
                  color: Colors.transparent,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                  width: 0,
                  color: Colors.transparent,
                ),
              ),
              prefixIcon: Container(
                margin: EdgeInsets.only(
                  left: 16,
                  right: 10,
                ),
                child: Icon(
                  Icons.search,
                  color: Color.fromARGB(149, 98, 98, 98),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
