import 'dart:convert';

class ShippingCostModel {
  final String? name;
  final String? code;
  final String? service;
  final String? description;
  final int? cost;
  final String? etd;

  ShippingCostModel({
    this.name,
    this.code,
    this.service,
    this.description,
    this.cost,
    this.etd,
  });

  factory ShippingCostModel.fromJson(String str) =>
      ShippingCostModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ShippingCostModel.fromMap(Map<String, dynamic> json) {
    return ShippingCostModel(
      name: json['name']?.toString() ?? 'Food Store',
      code: json['code']?.toString() ?? 'FLAT',
      service: json['service']?.toString() ?? 'REG',
      description:
          json['description']?.toString() ?? 'Pengiriman reguler',
      cost: _toInt(json['cost']),
      etd: json['etd']?.toString() ?? '1-2 hari',
    );
  }

  static int? _toInt(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    if (value is double) return value.toInt();
    return int.tryParse(value.toString());
  }

  Map<String, dynamic> toMap() => {
        'name': name,
        'code': code,
        'service': service,
        'description': description,
        'cost': cost,
        'etd': etd,
      };
}