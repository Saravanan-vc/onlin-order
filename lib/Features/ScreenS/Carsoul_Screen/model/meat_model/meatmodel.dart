import 'package:json_annotation/json_annotation.dart';
part 'meatmodel.g.dart';

@JsonSerializable()
class meatmodel {
  @JsonKey(name: 'mimage')
  String? image;

  @JsonKey(name: 'mname')
  String? name;

  @JsonKey(name: 'mgram')
  String? gram;

  @JsonKey(name: 'mprice')
  int? price;

  @JsonKey(name: 'moldprice')
  int? oldprice;

  meatmodel({
    this.gram,
    this.image,
    this.name,
    this.oldprice,
    this.price,
  });

  factory meatmodel.fromjson(Map<String, dynamic> json) =>
      _$meatmodelFromJson(json);
}
