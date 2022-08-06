import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/datas/data.dart';
import 'package:food_app/models/restaurant.dart';

class RestaurantList extends StatelessWidget {
  const RestaurantList({Key? key}) : super(key: key);

  buildRestaurant() {
    List<Widget> restaurantList = [];
    restaurants.forEach((RestaurantModel restaurant) {
      restaurantList.add(
        Container(
          width: double.infinity,
          height: 140,
          margin: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 4,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            // border: Border.all(
            //   width: 1,
            //   color: Color(0xff000000),
            // ),
            color: Color(0xffffffff),
            boxShadow: [
              BoxShadow(
                offset: Offset(2, 2),
                blurRadius: 4,
                color: Color.fromRGBO(0, 0, 0, 0.12),
              ),
              // box-shadow: rgba(0, 0, 0, 0.15) 1.95px 1.95px 2.6px;
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "${restaurant.imageURL}",
                  width: 150,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${restaurant.name}",
                      style: TextStyle(
                        color: Color.fromARGB(255, 49, 40, 33),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '${restaurant.address}',
                      softWrap: true,
                      style: TextStyle(
                        color: Color.fromARGB(255, 49, 40, 33),
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Rating: ${restaurant.rating}",
                      style: TextStyle(
                        color: Color.fromARGB(255, 230, 114, 19),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
    return Column(
      children: restaurantList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Restaurant Near Me",
            style: TextStyle(
              color: Color.fromARGB(255, 230, 114, 19),
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          buildRestaurant(),
        ],
      ),
    );
  }
}
