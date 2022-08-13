import 'package:grocery_app/models/item.dart';
import 'package:grocery_app/models/shop.dart';

final _apple = ItemModel(
  imageURL: "assets/images/apple1.png",
  name: "Apple",
  ammount: "1 Kg",
  price: 180,
);

final _egg = ItemModel(
  imageURL: "assets/images/egg.png",
  name: "Egg",
  ammount: "1 dozen",
  price: 120,
);

final _milk = ItemModel(
  imageURL: "assets/images/milk.png",
  name: "Dairy Milk",
  ammount: "1 Litre",
  price: 80,
);

final _rice = ItemModel(
  imageURL: "assets/images/rice.png",
  name: "Rice",
  ammount: "1 Kg",
  price: 70,
);

final _lentil = ItemModel(
  imageURL: "assets/images/lentil.png",
  name: "Lentil",
  ammount: "1 Litre",
  price: 80,
);

final _chicken = ItemModel(
  imageURL: "assets/images/chicken.png",
  name: "Chicken",
  ammount: "1 kg",
  price: 200,
);

final _mutton = ItemModel(
  imageURL: "assets/images/mutton.png",
  name: "Mutton",
  ammount: "1 kg",
  price: 350,
);

final _shop0 = ShopModel(
  imageurl: "assets/images/shop0.png",
  name: "Shwapno",
  address: "Dhanmondi 9, Dhaka",
  rating: 5,
  items: [_chicken, _egg, _milk, _rice, _lentil],
);

final _shop1 = ShopModel(
  imageurl: "assets/images/shop1.png",
  name: "Sabzi Plus",
  address: "24 Station Road, Dhaka",
  rating: 4,
  items: [_mutton, _apple, _milk, _lentil],
);

final _shop2 = ShopModel(
  imageurl: "assets/images/shop2.png",
  name: "BazarKoren",
  address: "Nazrul Shoroni, Dhaka",
  rating: 3,
  items: [_apple, _chicken, _milk, _lentil, _egg],
);

final _shop3 = ShopModel(
  imageurl: "assets/images/shop3.png",
  name: "Go4bazaar",
  address: "Jigatola Road, Dhaka",
  rating: 4,
  items: [_milk, _chicken, _mutton, _lentil, _egg],
);

final _shop4 = ShopModel(
  imageurl: "assets/images/shop4.png",
  name: "Mina Bazar",
  address: "Jigatola Road, Dhaka",
  rating: 5,
  items: [_mutton, _rice, _milk, _lentil, _egg],
);

final List<ItemModel> categories = [
  _apple,
  _egg,
  _milk,
  _rice,
  _lentil,
  _chicken,
  _mutton,
];

final List<ItemModel> popularItems = [
  _rice,
  _egg,
  _milk,
  _chicken,
  _lentil,
  _mutton,
];

final List<ShopModel> shopList = [
  _shop0,
  _shop1,
  _shop2,
  _shop3,
  _shop4,
];
