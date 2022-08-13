import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/models/restaurant.dart';

class RestaurantDetails extends StatelessWidget {
  RestaurantDetails({Key? key, this.restaurantModel}) : super(key: key);

  RestaurantModel? restaurantModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: Column(
          children: [
            Column(
              children: [
                Image(
                  image: AssetImage(
                    "${restaurantModel!.imageURL}",
                  ),
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 26,
                  ),
                  transform: Matrix4.translationValues(0.0, -25.0, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  width: double.infinity,
                  // height: 120,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${restaurantModel!.name}",
                            style: TextStyle(
                              color: Color.fromARGB(255, 49, 40, 33),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "${restaurantModel!.address}",
                            softWrap: true,
                            style: TextStyle(
                              color: Color.fromARGB(255, 49, 40, 33),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Text(
                        "Rating: ${restaurantModel!.rating}",
                        style: TextStyle(
                          color: Color.fromARGB(255, 230, 114, 19),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(0.0, -25.0, 0),
                  padding: EdgeInsets.symmetric(
                    horizontal: 26,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 230, 114, 19),
                        ),
                        child: Text(
                          "Review",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 230, 114, 19),
                        ),
                        child: Text(
                          "Contact",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Menu",
                  style: TextStyle(
                    color: Color.fromARGB(255, 230, 114, 19),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
            Expanded(
              flex: 10,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: double.infinity,
                // transform: Matrix4.translationValues(0.0, -50.0, 0),
                child: GridView.count(
                  shrinkWrap: true,
                  dragStartBehavior: DragStartBehavior.start,
                  children: List.generate(
                    restaurantModel!.menu!.length,
                    (index) {
                      FoodModel food = restaurantModel!.menu![index];
                      return Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                              "${food.imageURL}",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                  crossAxisCount: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
