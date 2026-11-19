import 'dart:convert';

import 'package:flutter_foodstore/resource/model/product_model.dart';

/// Mengubah nilai angka dari API (int, double, atau String) menjadi int
int? _toInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is num) return value.toInt();
  return int.tryParse(value.toString()) ?? double.tryParse(value.toString())?.toInt();
}

class CartResponseModel {
  final int? totalWeight;
  final int? totalPrice;
  final List<Cart>? carts;

  CartResponseModel({
    this.totalWeight,
    this.totalPrice,
    this.carts,
  });

  factory CartResponseModel.fromJson(String str) =>
      CartResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CartResponseModel.fromMap(Map<String, dynamic> json) =>
      CartResponseModel(
        totalWeight: _toInt(json["total_weight"]),
        totalPrice: _toInt(json["total_price"]),
        carts: json["carts"] == null
            ? []
            : List<Cart>.from(json["carts"]!.map((x) => Cart.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "total_weight": totalWeight,
        "total_price": totalPrice,
        "carts": carts == null
            ? []
            : List<dynamic>.from(carts!.map((x) => x.toMap())),
      };
}

class Cart {
  final int? id;
  final int? customerId;
  final int? productId;
  final int? qty;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final ProductModel? product;

  Cart({
    this.id,
    this.customerId,
    this.productId,
    this.qty,
    this.createdAt,
    this.updatedAt,
    this.product,
  });

  factory Cart.fromJson(String str) => Cart.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Cart.fromMap(Map<String, dynamic> json) => Cart(
        id: _toInt(json["id"]),
        customerId: _toInt(json["customer_id"]),
        productId: _toInt(json["product_id"]),
        qty: _toInt(json["qty"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        product: json["product"] == null
            ? null
            : ProductModel.fromMap(json["product"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "customer_id": customerId,
        "product_id": productId,
        "qty": qty,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "product": product?.toMap(),
      };
}