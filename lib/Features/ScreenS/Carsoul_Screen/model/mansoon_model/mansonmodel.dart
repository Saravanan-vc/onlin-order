import 'package:json_annotation/json_annotation.dart';
part 'mansonmodel.g.dart';

@JsonSerializable()
class Mansonmodel {
  @JsonKey(name: 'mname')
  String? name;
  @JsonKey(name: 'mimage')
  String? image;
  @JsonKey(name: 'mpiece')
  String? piece;
  @JsonKey(name: 'mprice')
  int? price;
  @JsonKey(name: 'moldprice')
  int? oldprice;

  Mansonmodel({
    this.image,
    this.name,
    this.oldprice,
    this.piece,
    this.price,
  });

  factory Mansonmodel.fromjson(Map<String, dynamic> json) =>
      _$MansonmodelFromJson(json);
}
