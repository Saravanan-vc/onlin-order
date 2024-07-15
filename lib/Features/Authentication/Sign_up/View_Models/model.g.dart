// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

userdoc _$userdocFromJson(Map<String, dynamic> json) => userdoc(
      userid: json['userid'] as String?,
      usermail: json['useremail'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$userdocToJson(userdoc instance) => <String, dynamic>{
      'useremail': instance.usermail,
      'userid': instance.userid,
      'username': instance.username,
    };
