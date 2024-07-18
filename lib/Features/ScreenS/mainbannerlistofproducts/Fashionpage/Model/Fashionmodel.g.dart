// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Fashionmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fashionproduct _$FashionproductFromJson(Map<String, dynamic> json) =>
    Fashionproduct(
      image: json['Fimage'] as String?,
      name: json['Fname'] as String?,
      oldprice: (json['Foldprice'] as num?)?.toInt(),
      piece: json['Fpiece'] as String?,
      price: (json['Fprice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FashionproductToJson(Fashionproduct instance) =>
    <String, dynamic>{
      'Fname': instance.name,
      'Fpiece': instance.piece,
      'Fimage': instance.image,
      'Fprice': instance.price,
      'Foldprice': instance.oldprice,
    };
