import 'package:flutter/material.dart';

class productModel {
  String? name, imgURL, type;
  Color? clr;
  double? price;

  productModel({
    this.name,
    this.price,
    this.imgURL,
    this.clr,
    this.type,
  });
}
