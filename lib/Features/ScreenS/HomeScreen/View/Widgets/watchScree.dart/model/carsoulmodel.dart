import 'package:json_annotation/json_annotation.dart';
part 'carsoulmodel.g.dart';

@JsonSerializable()
class carsoulimage {
  @JsonKey(name: 'Eimage')
  String? image;

  carsoulimage({this.image});
 factory carsoulimage.fromjson(Map<String, dynamic> json)=> _$carsoulimageFromJson(json);
}
