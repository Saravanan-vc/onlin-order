// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modelproducts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

electricproducts _$electricproductsFromJson(Map<String, dynamic> json) =>
    electricproducts(
      image: json['Eimage'] as String?,
      name: json['Ename'] as String?,
      oldprice: (json['Eoldprice'] as num?)?.toInt(),
      piece: json['Epiece'] as String?,
      price: (json['Eprice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$electricproductsToJson(electricproducts instance) =>
    <String, dynamic>{
      'Ename': instance.name,
      'Eprice': instance.price,
      'Eoldprice': instance.oldprice,
      'Epiece': instance.piece,
      'Eimage': instance.image,
    };
