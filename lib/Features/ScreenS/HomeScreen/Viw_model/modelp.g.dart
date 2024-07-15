// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modelp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

products _$productsFromJson(Map<String, dynamic> json) => products(
      gram: json['gram'] as String?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      image: json['image'] as String?,
      oldprice: (json['oldprice'] as num?)?.toInt(),
      totalstock: (json['totalstock'] as num?)?.toInt(),
    );

Map<String, dynamic> _$productsToJson(products instance) => <String, dynamic>{
      'gram': instance.gram,
      'name': instance.name,
      'image': instance.image,
      'price': instance.price,
      'oldprice': instance.oldprice,
      'totalstock': instance.totalstock,
    };
