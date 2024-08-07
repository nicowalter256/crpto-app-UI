import 'package:json_annotation/json_annotation.dart';
part 'data_model.g.dart';

@JsonSerializable()
class DataModel {
  int id;
  String name;
  double value;

  DataModel({
    required this.id,
    required this.name,
    required this.value,
  });
  Map toJson() {
    return _$DataModelToJson(this);
  }

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return _$DataModelFromJson(json);
  }
}
