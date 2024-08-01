// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sentmodel _$SentmodelFromJson(Map<String, dynamic> json) => Sentmodel(
      image: json['simage'] as String?,
      name: json['sname'] as String?,
      oldprice: (json['soldprice'] as num?)?.toInt(),
      piece: json['spiece'] as String?,
      price: (json['sprice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SentmodelToJson(Sentmodel instance) => <String, dynamic>{
      'sname': instance.name,
      'simage': instance.image,
      'spiece': instance.piece,
      'sprice': instance.price,
      'soldprice': instance.oldprice,
    };
