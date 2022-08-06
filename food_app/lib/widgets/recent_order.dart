import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/datas/data.dart';
import 'package:food_app/models/order.dart';

class RecentOrder extends StatelessWidget {
  const RecentOrder({Key? key}) : super(key: key);

  _buildRecentOrder(BuildContext context, OrderModel order) {
    return Container(
      // width: 400,
      margin: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 4,
      ),
      clipBehavior: Clip.hardEdge,
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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "${order.food!.imageURL}",
              width: 150,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${order.food!.name}",
                  style: TextStyle(
                    color: Color.fromARGB(255, 49, 40, 33),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${order.restaurant!.name}",
                          style: TextStyle(
                            color: Color.fromARGB(255, 49, 40, 33),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "${order.date}",
                          style: TextStyle(
                            color: Color.fromARGB(255, 35, 35, 35),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    // Spacer(),
                    Container(
                      width: 36,
                      height: 36,
                      child: FittedBox(
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Color.fromARGB(255, 230, 114, 19),
                          child: Icon(
                            Icons.add,
                            size: 36,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
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
            "Recent Order",
            style: TextStyle(
              color: Color.fromARGB(255, 230, 114, 19),
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            height: 160,
            child: ListView.separated(
              itemCount: currentUser.orders!.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                OrderModel order = currentUser.orders![index];
                return _buildRecentOrder(context, order);
              },
              separatorBuilder: (_, index) {
                return SizedBox(
                  width: 16,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
