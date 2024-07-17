
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class userdoc {
  @JsonKey(name: 'useremail')
  String? usermail;
  @JsonKey(name: 'userid')
  String? userid;
  @JsonKey(name: 'username')
  String? username;

  userdoc({this.userid, this.usermail, this.username});

  factory userdoc.fromjson(Map<String,dynamic>  json)=> _$userdocFromJson(json);
}
