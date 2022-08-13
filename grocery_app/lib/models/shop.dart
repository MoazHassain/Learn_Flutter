import 'package:grocery_app/models/item.dart';

class ShopModel {
  String? imageurl, name, address;
  int? rating;
  List<ItemModel>? items;

  ShopModel({
    this.imageurl,
    this.name,
    this.address,
    this.rating,
    this.items,
  });
}
