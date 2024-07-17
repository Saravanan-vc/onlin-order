import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';
@JsonSerializable()
class electricaldata {
  @JsonKey(name: "BImage")
  String? image;

  electricaldata({this.image});
  factory electricaldata.fromjson(Map<String, dynamic> json) =>
      _$electricaldataFromJson(json);
}
