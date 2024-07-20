// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'watchproducts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Watchproduct _$WatchproductFromJson(Map<String, dynamic> json) => Watchproduct(
      image: json['Eimage'] as String?,
      name: json['Ename'] as String?,
      oldprice: (json['Eoldprice'] as num?)?.toInt(),
      piece: json['Epiece'] as String?,
      price: (json['Eprice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$WatchproductToJson(Watchproduct instance) =>
    <String, dynamic>{
      'Ename': instance.name,
      'Epiece': instance.piece,
      'Eimage': instance.image,
      'Eprice': instance.price,
      'Eoldprice': instance.oldprice,
    };
