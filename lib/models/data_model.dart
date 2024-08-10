import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'data_model.g.dart';

@JsonSerializable()
class DataModel {
  int id;
  String name;
  double value;
  int price;
  String description;
  dynamic icon;

  DataModel({
    required this.id,
    required this.name,
    required this.value,
    required this.price,
    required this.description,
    required this.icon,
  });
  Map toJson() {
    return _$DataModelToJson(this);
  }

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return _$DataModelFromJson(json);
  }
}
