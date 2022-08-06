import 'package:food_app/models/food.dart';

class RestaurantModel {
  List<FoodModel>? menu;
  String? imageURL, name, address;
  int? rating;

  RestaurantModel({
    this.imageURL,
    this.name,
    this.address,
    this.menu,
    this.rating,
  });
}
