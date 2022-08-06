// Food
import 'package:food_app/models/food.dart';
import 'package:food_app/models/order.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:food_app/models/user.dart';

final _burrito = FoodModel(
  imageURL: 'assets/images/burrito.jpg',
  name: 'Burrito',
  price: 8.99,
);
final _steak = FoodModel(
  imageURL: 'assets/images/steak.jpg',
  name: 'Steak',
  price: 17.99,
);
final _pasta = FoodModel(
  imageURL: 'assets/images/pasta.jpg',
  name: 'Pasta',
  price: 14.99,
);
final _ramen = FoodModel(
  imageURL: 'assets/images/ramen.jpg',
  name: 'Ramen',
  price: 13.99,
);
final _pancakes = FoodModel(
  imageURL: 'assets/images/pancakes.jpg',
  name: 'Pancakes',
  price: 9.99,
);
final _burger = FoodModel(
  imageURL: 'assets/images/burger.jpg',
  name: 'Burger',
  price: 14.99,
);
final _pizza = FoodModel(
  imageURL: 'assets/images/pizza.jpg',
  name: 'Pizza',
  price: 11.99,
);
final _salmon = FoodModel(
  imageURL: 'assets/images/salmon.jpg',
  name: 'Salmon Salad',
  price: 12.99,
);

// Restaurants
final _restaurant0 = RestaurantModel(
  imageURL: 'assets/images/restaurant0.jpg',
  name: 'Cafe Darbar',
  address: "Dhanmondi, Dhaka,\nBangladesh",
  rating: 5,
  menu: [_burrito, _steak, _pasta, _ramen, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant1 = RestaurantModel(
  imageURL: 'assets/images/restaurant1.jpg',
  name: 'Cafe Rio',
  address: 'Mirpur, Dhaka, BD',
  rating: 4,
  menu: [_steak, _pasta, _ramen, _pancakes, _burger, _pizza],
);
final _restaurant2 = RestaurantModel(
  imageURL: 'assets/images/restaurant2.jpg',
  name: 'Handi',
  address: 'Gulsan, Dhaka, DB',
  rating: 4,
  menu: [_steak, _pasta, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant3 = RestaurantModel(
  imageURL: 'assets/images/restaurant3.jpg',
  name: 'Steak Out',
  address: 'Kakrail, Dhaka, BD',
  rating: 2,
  menu: [_burrito, _steak, _burger, _pizza, _salmon],
);
final _restaurant4 = RestaurantModel(
  imageURL: 'assets/images/restaurant4.jpg',
  name: 'Adda',
  address: 'Firmgate, Dhaka, BD',
  rating: 3,
  menu: [_burrito, _ramen, _pancakes, _salmon],
);

final List<RestaurantModel> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

// User
final currentUser = UserModel(
  name: 'Rebecca',
  orders: [
    OrderModel(
      date: 'Nov 10, 2019',
      food: _steak,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    OrderModel(
      date: 'Nov 8, 2019',
      food: _ramen,
      restaurant: _restaurant0,
      quantity: 3,
    ),
    OrderModel(
      date: 'Nov 5, 2019',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
    OrderModel(
      date: 'Nov 2, 2019',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    OrderModel(
      date: 'Nov 1, 2019',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 1,
    ),
  ],
  cart: [
    OrderModel(
      date: 'Nov 11, 2019',
      food: _burger,
      restaurant: _restaurant2,
      quantity: 2,
    ),
    OrderModel(
      date: 'Nov 11, 2019',
      food: _pasta,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    OrderModel(
      date: 'Nov 11, 2019',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    OrderModel(
      date: 'Nov 11, 2019',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 3,
    ),
    OrderModel(
      date: 'Nov 11, 2019',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
  ],
);
