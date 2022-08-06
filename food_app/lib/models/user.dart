import 'package:food_app/models/food.dart';
import 'package:food_app/models/order.dart';
import 'package:food_app/models/restaurant.dart';

class UserModel {
  String? name;
  List<OrderModel>? orders;
  List<OrderModel>? cart;

  UserModel({
    this.name,
    this.orders,
    this.cart,
  });
}
