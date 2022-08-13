import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grocery_app/screens/homepage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  PageController _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // pages
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = (index == 2);
              });
            },
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 60,
                  left: 40,
                  right: 40,
                ),
                color: Color.fromARGB(130, 245, 240, 187),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/Girl-mask-grocery.png",
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Welcome to\nGroceryus",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.9,
                        height: 1.1,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Best online grocery store\nto shop in the town",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 47, 47, 47),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 60,
                  left: 40,
                  right: 40,
                ),
                color: Color.fromARGB(100, 144, 200, 172),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/Healthyfoodonlineshopping.png",
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Only The Fresh",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.9,
                        height: 1.1,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Shopping with us for\nbetter quality and the best price",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 47, 47, 47),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 60,
                  left: 40,
                  right: 40,
                ),
                color: Color.fromARGB(80, 167, 144, 200),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/girl-grocery.png",
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Shopping Made Easy",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 0.9,
                        height: 1.1,
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "The one supermarket that makes\nyour life easy and better",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 47, 47, 47),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // indicator
          Container(
            alignment: Alignment(0, 0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                isLastPage
                    ? TextButton(
                        onPressed: () {},
                        child: Text(
                          "",
                        ),
                      )
                    : TextButton(
                        onPressed: () {
                          _controller.jumpToPage(2);
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 12,
                          ),
                        ),
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                    // expansionFactor: 2,
                    activeDotColor: Colors.deepOrange,
                    dotColor: Color.fromARGB(255, 204, 204, 204),
                    dotWidth: 12,
                    dotHeight: 12,
                  ),
                ),
                isLastPage
                    ? ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Homepage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 11,
                          ),
                        ),
                        child: Text(
                          "Done",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    : TextButton(
                        onPressed: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeInOut,
                          );
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 12,
                          ),
                        ),
                        child: Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
