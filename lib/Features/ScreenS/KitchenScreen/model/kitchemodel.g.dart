// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchemodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kitchemodel _$KitchemodelFromJson(Map<String, dynamic> json) => Kitchemodel(
      Kname: json['kname'] as String?,
      kimage: json['kimage'] as String?,
      kolprice: json['koldprice'] as int?,
      kpiece: json['kpiece'] as String?,
      kprice: json['kprice'] as int?,
    );

Map<String, dynamic> _$KitchemodelToJson(Kitchemodel instance) =>
    <String, dynamic>{
      'kname': instance.Kname,
      'kimage': instance.kimage,
      'kprice': instance.kprice,
      'koldprice': instance.kolprice,
      'kpiece': instance.kpiece,
    };
