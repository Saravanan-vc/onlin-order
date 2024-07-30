// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meatmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

meatmodel _$meatmodelFromJson(Map<String, dynamic> json) => meatmodel(
      gram: json['mgram'] as String?,
      image: json['mimage'] as String?,
      name: json['mname'] as String?,
      oldprice: (json['moldprice'] as num?)?.toInt(),
      price: (json['mprice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$meatmodelToJson(meatmodel instance) => <String, dynamic>{
      'mimage': instance.image,
      'mname': instance.name,
      'mgram': instance.gram,
      'mprice': instance.price,
      'moldprice': instance.oldprice,
    };
