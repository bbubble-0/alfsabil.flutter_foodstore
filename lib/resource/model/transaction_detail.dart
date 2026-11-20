
import 'dart:convert';

import 'package:flutter_foodstore/resource/model/product_model.dart';

int? _toInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is num) return value.round();

  return num.tryParse(value.toString())?.round();
}

class TransactionDetail {
  final int? id;
  final int? transactionId;
  final int? productId;
  final int? qty;
  final int? price;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final ProductModel? product;

  TransactionDetail({
    this.id,
    this.transactionId,
    this.productId,
    this.qty,
    this.price,
    this.createdAt,
    this.updatedAt,
    this.product,
  });

  factory TransactionDetail.fromJson(String str) =>
      TransactionDetail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TransactionDetail.fromMap(Map<String, dynamic> json) =>
      TransactionDetail(
        id: _toInt(json["id"]),
        transactionId: _toInt(json["transaction_id"]),
        productId: _toInt(json["product_id"]),
        qty: _toInt(json["qty"]),
        price: _toInt(json["price"]),
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
        "transaction_id": transactionId,
        "product_id": productId,
        "qty": qty,
        "price": price,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "product": product?.toMap(),
      };
}
