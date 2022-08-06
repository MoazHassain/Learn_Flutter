import 'package:food_app/models/food.dart';
import 'package:food_app/models/restaurant.dart';

class OrderModel {
  RestaurantModel? restaurant;
  FoodModel? food;
  String? date;
  int? quantity;

  OrderModel({
    this.restaurant,
    this.food,
    this.date,
    this.quantity,
  });
}
