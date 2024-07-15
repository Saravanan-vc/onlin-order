// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modelp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

products _$productsFromJson(Map<String, dynamic> json) => products(
      gram: json['gram'] as String?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
    )..image = json['image'] as String?;

Map<String, dynamic> _$productsToJson(products instance) => <String, dynamic>{
      'gram': instance.gram,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
    };
