// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataModel _$DataModelFromJson(Map<String, dynamic> json) => DataModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      value: (json['value'] as num).toDouble(),
      price: (json['price'] as num).toInt(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$DataModelToJson(DataModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'price': instance.price,
      'description': instance.description,
    };
