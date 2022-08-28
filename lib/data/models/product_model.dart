import 'dart:convert';

import 'package:maksafy/domain/entities/product_entity.dart';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel extends ProductEntity {
  ProductModel(
      {required int id,
      required String calories,
      required String image,
      required String description,
      required String price})
      : super(
          id: id,
          price: price,
          image: image,
          calories: calories,
          description: description,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        calories: json["calories"],
        image: json["image"],
        description: json["description"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "calories": calories,
        "image": image,
        "description": description,
        "price": price,
      };
}
