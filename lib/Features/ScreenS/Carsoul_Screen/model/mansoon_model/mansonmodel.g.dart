// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mansonmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mansonmodel _$MansonmodelFromJson(Map<String, dynamic> json) => Mansonmodel(
      image: json['mimage'] as String?,
      name: json['mname'] as String?,
      oldprice: (json['moldprice'] as num?)?.toInt(),
      piece: json['mpiece'] as String?,
      price: (json['mprice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MansonmodelToJson(Mansonmodel instance) =>
    <String, dynamic>{
      'mname': instance.name,
      'mimage': instance.image,
      'mpiece': instance.piece,
      'mprice': instance.price,
      'moldprice': instance.oldprice,
    };
